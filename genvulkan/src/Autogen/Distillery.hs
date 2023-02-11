{-# LANGUAGE DataKinds
           , DuplicateRecordFields
           , NoFieldSelectors
           , RecordWildCards
           , ScopedTypeVariables
           , TypeApplications #-}

module Autogen.Distillery
  ( distill
  , showErrors
  , purgeProtects
  , purgeExtensions
  ) where

import           Autogen.Distillery.Class
import           Autogen.Distillery.Condenser as Condenser
import           Autogen.Distillery.Types as Distillery
import           Autogen.Parser.Types as Parser

import           Control.Applicative hiding (optional, Const)
import           Data.Bits
import           Data.Char
import           Data.Foldable
import           Data.List.NonEmpty (NonEmpty (..))
import qualified Data.List.NonEmpty as NonEmpty
import           Data.Maybe
import           Data.Map (Map)
import qualified Data.Map as Map
import           Data.Traversable
import           Foreign.C.Types
import           GHC.Records
import           Numeric
import           Text.ParserCombinators.ReadP as ReadP




signed :: Num i => ReadS i -> ReadS i
signed r =
  readP_to_S $ do
    s <- signedP
    i <- readS_to_P r
    return $ if s
               then negate i
               else i
  where
    signedP = (char '-' >> return True) <|> pure False

distillValue :: Parser.Integer -> Distillery (Value Prelude.Integer)
distillValue (Parser.Integer ext) =
  case runReadS dist ext of
    Just i  -> pure i
    Nothing -> fail $ "Cannot parse literal " <> ext
  where
    fmapReadS :: (a -> b) -> ReadS a -> ReadS b
    fmapReadS f r str = (\(a, b) -> (f a, b)) <$> r str

    dist :: Integral i => ReadS (Value i)
    dist raw_
      | '\"' : str <- raw_, _:_ <- str, '\"' <- last str = [(String $ init str, "")]

      | '(' : '~' : str <- raw_, (Integral int, rest) : _ <- dist str, fmap toLower rest == "u)" =
         [(Integral $ fromIntegral (complement int :: CUInt), "")]

      | '(' : '~' : str <- raw_, (Integral int, rest) : _ <- dist str, fmap toLower rest == "ull)" =
         [(Integral $ fromIntegral (complement int :: CULLong), "")]

      | '0' : 'x' : str <- raw_ = fmapReadS Integral readHex str

      | '-' : '0' : 'x' : str <- raw_ = fmapReadS Integral (signed readHex) str

      | (float, rest) : _ <- signed readFloat raw_, fmap toLower rest == "f" =
          [(Fractional float, "")]

      | otherwise = fmapReadS Integral (signed readDec) raw_



data Namespace = Namespace (Map String Protected) (Map String Base)

emptyNamespace :: Namespace
emptyNamespace = Namespace Map.empty Map.empty

pickBasicType :: Namespace -> String -> Maybe Distillery.Type
pickBasicType (Namespace protected bases) type_
  | "void"                    <- type_                   = Just Void
  | "float"                   <- type_                   = Just Float
  | "double"                  <- type_                   = Just Double
  | "char"                    <- type_                   = Just Char
  | "size_t"                  <- type_                   = Just Size
  | "int"                     <- type_                   = Just Int
  | "int8_t"                  <- type_                   = Just Int8
  | "int16_t"                 <- type_                   = Just Int16
  | "int32_t"                 <- type_                   = Just Int32
  | "int64_t"                 <- type_                   = Just Int64
  | "uint8_t"                 <- type_                   = Just UInt8
  | "uint16_t"                <- type_                   = Just UInt16
  | "uint32_t"                <- type_                   = Just UInt32
  | "uint64_t"                <- type_                   = Just UInt64

  | 'V':'k':_                 <- type_                   = Just $ VkType type_
  | 'P':'F':'N':'_':'v':'k':_ <- type_                   = Just $ VkType type_

  | Map.member type_ protected || Map.member type_ bases = Just $ VkType type_

  | otherwise                                            = Nothing



pickComplexType
  :: Namespace
  -> [String]              -- ^ qualifiers before the type
  -> String                -- ^ type itself
  -> [String]              -- ^ qualifiers and pointers after the type
  -> [ArrayLength]         -- ^ array lengths
  -> Maybe Int             -- ^ number of bits (for bitfields)
  -> Maybe Distillery.Type
pickComplexType ns pre str post arrlen mayBits =
  case (pre, post, arrlen, mayBits) of
    ([]                 , []                 ,      [] , Nothing) -> pickBasicType ns str
    ([]                 , []                 ,      [] , Just bt) -> Bits bt <$> pickBasicType ns str
    ([]                 , []                 , al : als, Nothing) -> Array (al :| als) <$> pickBasicType ns str
    (["const"]          , []                 , al : als, Nothing) -> Array (al :| als) . Const <$> pickBasicType ns str
    ([]                 , ["*"]              ,      [] , Nothing) -> Ptr <$> pickBasicType ns str
    (["struct"]         , ["*"]              ,      [] , Nothing) -> Ptr . Structure <$> pickBasicType ns str
    (["struct"]         , ["*", "*"]         ,      [] , Nothing) -> Ptr . Ptr . Structure <$> pickBasicType ns str
    (["const"]          , ["*"]              ,      [] , Nothing) -> Ptr . Const <$> pickBasicType ns str
    (["const", "struct"], ["*"]              ,      [] , Nothing) -> Ptr . Const . Structure <$> pickBasicType ns str
    ([]                 , ["*",          "*"],      [] , Nothing) -> Ptr . Ptr <$> pickBasicType ns str
    (["const"]          , ["*", "const", "*"],      [] , Nothing) -> Ptr . Const . Ptr . Const <$> pickBasicType ns str
    _                                                             -> Nothing



data SortedRegistry =
       SortedRegistry
         { platforms         :: [Platforms]
         , tags              :: [Tags]
         , types             :: Map (Maybe String) [Parser.Type]
         , enums             :: Map (Maybe String) [Enums]
         , commands          :: [Commands]
         , feature           :: [Parser.Feature]
         , extensions        :: [Extensions]
         , formats           :: [Formats]
         , spirvExtensions   :: [SpirvExtensions]
         , spirvCapabilities :: [SpirvCapabilities]
         }

emptySortedRegistry :: SortedRegistry
emptySortedRegistry = SortedRegistry [] [] Map.empty Map.empty [] [] [] [] [] []

sortRegistry :: Registry -> SortedRegistry
sortRegistry (Registry regs) = foldr go emptySortedRegistry regs
  where
    go :: RegEntry -> SortedRegistry -> SortedRegistry
    go entry SortedRegistry {..} =
      case entry of
        RegComment _            -> SortedRegistry {..}
        RegPlatforms p          -> SortedRegistry { platforms = p : platforms, .. }
        RegTags t               -> SortedRegistry { tags      = t : tags, .. }
        RegTypes t              ->
          SortedRegistry { types = foldr categorizeType types (getField @"types" t), .. }

        RegEnums e              ->
          SortedRegistry { enums = Map.insertWith (\_ -> (:) e) (getField @"type" e) [e] enums, .. }

        RegCommands c           -> SortedRegistry { commands  = c : commands, .. }
        RegFeature f            -> SortedRegistry { feature   = f : feature, .. }
        RegExtensions e         -> SortedRegistry { extensions = e : extensions, .. }
        RegFormats f            -> SortedRegistry { formats    = f : formats, .. }
        RegSpirvExtensions se   ->
          SortedRegistry { spirvExtensions = se : spirvExtensions, .. }

        RegSpirvCapabilities sc ->
          SortedRegistry { spirvCapabilities = sc : spirvCapabilities, .. }

    categorizeType
      :: TypesElement -> Map (Maybe String) [Parser.Type] -> Map (Maybe String) [Parser.Type]
    categorizeType (TypesComment _) = id
    categorizeType (TypesElement t) = Map.insertWith (\_ -> (:) t) (getField @"category" t) [t]



distillPlatforms :: SortedRegistry -> Distillery (Map String Distillery.Platform)
distillPlatforms sreg = foldlM go Map.empty (getField @"platforms" sreg)
  where
    go ms (ps :: Platforms) = foldlM subgo ms $ getField @"platforms" ps

    subgo ms (p :: Parser.Platform) = do
      context p
      mark "platform"
      case getField @"comment" p of
        Nothing      -> fail "No comment string"
        Just comment ->
          return $
            Map.insert (getField @"name" p)
                       Distillery.Platform { protect = getField @"protect" p
                                           , comment = comment
                                           }
                       ms



distillTags :: SortedRegistry -> Distillery (Map String Distillery.Tag)
distillTags sreg = foldlM go Map.empty (getField @"tags" sreg)
  where
    go ms (ts :: Tags) = foldlM subgo ms $ getField @"tags" ts

    subgo ms (t :: Parser.Tag) = do
      return $
        Map.insert (getField @"name" t)
                   Distillery.Tag { author  = getField @"author" t
                                  , contact = getField @"contact" t
                                  }
                   ms



distillIncludes :: SortedRegistry -> Distillery (Map String Include)
distillIncludes sreg = case Map.lookup (Just "include") (getField @"types" sreg) of
                         Nothing       -> return Map.empty
                         Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "include"
      case getField @"name" t of
        Nothing              -> fail "No name"
        Just (TypeName name) ->
          case getField @"flavor" t of
            TypeOne []        -> return $ Map.insert name PlatformInclude ms
            TypeOne [Raw str] -> return $ Map.insert name (Include str) ms
            _                 -> fail "Unsupported flavor"



condenseDefine :: Condenser (String, Maybe String)
condenseDefine = do
  _ <- raw $
         munch1 $ \_ -> True

  name <- tagged "name" $
            munch1 isValidC

  (<|>)
    ( do _ <- raw $
           munch1 $ \_ -> True

         return (name, Nothing)
    )
    $ do _ <- Condenser.optional . raw $
                                     munch $ \_ -> True

         type_ <- tagged "type" $
                    munch1 isValidC

         _ <- raw $
                munch1 $ \_ -> True

         return (name, Just type_)



distillDefines :: SortedRegistry -> Distillery (Map String Define)
distillDefines sreg = case Map.lookup (Just "define") (getField @"types" sreg) of
                         Nothing       -> return Map.empty
                         Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "define"
      case getField @"name" t of
        Just (TypeName name) ->
          return $ Map.insert name (Define (getField @"requires" t) Nothing) ms

        Nothing              ->
          case getField @"flavor" t of
            TypeOne (f:fs) -> do
              (name, type_) <- condense condenseDefine $ f :| fs
              return $ Map.insert name (Define (getField @"requires" t) type_) ms

            _                 -> fail "Unsupported flavor"



distillProtected :: SortedRegistry -> Distillery (Map String Protected)
distillProtected sreg = case Map.lookup Nothing (getField @"types" sreg) of
                          Nothing       -> return Map.empty
                          Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "protected"
      let attrs = getField @"attributes" t
      if not . null . Map.delete "name" $ Map.delete "requires" attrs
        then fail "Attributes other than requires and name found"
        else
          case getField @"name" t of
            Nothing              -> fail "No name"
            Just (TypeName name) ->
              case getField @"requires" t of
                Nothing       -> return $ Map.insert name NotProtected ms
                Just requires -> return $ Map.insert name (Protected requires) ms



-- | Checks that a character can be a part of a C name.
isValidC :: Char -> Bool
isValidC a = isAlphaNum a || a == '_'

-- | Consumes any number of type qualifiers and pointers.
compositeP :: ReadP [String]
compositeP = subloop
  where
    subloop = do
      a <- string "*" <|> munch1 (\a -> isValidC a && a /= '*')
      as <- loop
      return $ a : as

    loop = do
      _ <- munch isSpace
      subloop <|> pure []

condenseBases :: Condenser [(String, Base)]
condenseBases = do
  (mode, pre) <- raw $ do
                   _ <- munch isSpace
                   mode <- (0 <$ do _ <- string "typedef"
                                    _ <- munch1 isSpace
                                    _ <- string "struct"
                                    _ <- munch1 isSpace
                                    _ <- string "__IOSurface"
                                    _ <- munch isSpace
                                    _ <- char '*'
                                    return ()
                           )
                              <|> (1 <$ string "struct")
                              <|> (2 <$ string "typedef")
                              <|> (3 <$ string "#ifdef")
                   case mode of
                     0 -> do _ <- munch isSpace
                             return (mode, [])

                     1 -> do _ <- munch isSpace
                             return (mode, [])

                     2 -> do _ <- munch isSpace
                             pre <- compositeP <|> pure []
                             return (mode, pre)

                     3 -> do _ <- munch $ \_ -> True
                             return (mode, [])

                     _ -> fail "Unknown operation mode"

  case mode :: Int of
    0 -> do
      name <- tagged "name" $
                munch1 isValidC

      raw $ do
        _ <- munch isSpace
        _ <- char ';'
        _ <- munch isSpace
        return ()

      end

      return [(name, Synonym . Structure . Ptr $ VkType "__IOSurface"), ("__IOSurface", Opaque)]

    1 -> do
      name <- tagged "name" $
                munch1 isValidC

      raw $ do
        _ <- munch isSpace
        _ <- char ';'
        _ <- munch isSpace
        return ()

      end

      return [(name, Opaque)]

    2 -> do
      rawtype <- tagged "type" $
                   munch1 $ \a -> isAlphaNum a || a == '_'

      post <- Condenser.option [] . raw $ do
                                      _ <- munch isSpace
                                      compositeP

      name <- tagged "name" $
                munch1 $ \a -> isAlphaNum a || a == '_'

      raw $ do
        _ <- munch isSpace
        _ <- char ';'
        _ <- munch isSpace
        return ()

      end

      type_ <- case pickComplexType emptyNamespace pre rawtype post [] Nothing of
                 Just type_ -> return type_
                 Nothing    -> fail "Cannot pick type"

      return [(name, Synonym type_)]

    3 -> do
      name <- tagged "name" $
                munch1 $ \a -> isAlphaNum a || a == '_'

      _ <- raw $ do
             munch $ \_ -> True

      end

      case name of
        "CAMetalLayer"       -> return [(name, Synonym Void)]
        "MTLDevice_id"       -> return [(name, Synonym $ Ptr Void)]
        "MTLCommandQueue_id" -> return [(name, Synonym $ Ptr Void)]
        "MTLBuffer_id"       -> return [(name, Synonym $ Ptr Void)]
        "MTLTexture_id"      -> return [(name, Synonym $ Ptr Void)]
        "MTLSharedEvent_id"  -> return [(name, Synonym $ Ptr Void)]
        _                    -> fail "Untreated #ifdef override"

    _ -> fail "Unknown operation mode"



distillBases :: SortedRegistry -> Distillery (Map String Base)
distillBases sreg = case Map.lookup (Just "basetype") (getField @"types" sreg) of
                      Nothing       -> pure Map.empty
                      Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "base"
      case getField @"flavor" t of
        TypeOne (f:fs) -> do
          bases <- condense condenseBases $ f :| fs
          return $ foldr (\(name, base) -> Map.insert name base) ms bases

        _ -> fail "Unsupported flavor"



condenseFuncPointer :: Condenser (String, FuncPointer)
condenseFuncPointer = do
  (ret, retPost) <- raw $ do
                      _ <- munch isSpace
                      _ <- string "typedef"
                      _ <- munch1 isSpace
                      ret <- munch1 isValidC
                      _ <- munch isSpace
                      retPost <- ReadP.option [] compositeP
                      _ <- char '('
                      _ <- munch isSpace
                      _ <- string "VKAPI_PTR"
                      _ <- munch isSpace
                      _ <- char '*'
                      _ <- munch isSpace
                      return (ret, retPost)

  rettype <- case pickComplexType emptyNamespace [] ret retPost [] Nothing of
               Just type_ -> return type_
               Nothing    -> fail "Cannot pick return type"

  stname <- tagged "name" $
              munch1 isValidC

  (voided, pre0) <- raw $ do _ <- munch isSpace
                             _ <- char ')'
                             _ <- munch isSpace
                             _ <- char '('
                             _ <- munch isSpace
                             _ <- string "void"
                             _ <- munch isSpace
                             _ <- char ')'
                             _ <- munch isSpace
                             _ <- char ';'
                             _ <- munch isSpace
                             return (True, [])

                      <|> do _ <- munch isSpace
                             _ <- char ')'
                             _ <- munch isSpace
                             _ <- char '('
                             _ <- munch isSpace
                             pre0 <- ReadP.option [] compositeP
                             return (False, pre0)

  if voided
    then do end
            return (stname, VoidPointer rettype)
    else do
      let subfield pre = do
            rawtype <- tagged "type" $
                         munch1 isValidC

            (name, post, atEnd, nextpre) <- raw $ do
                                              _ <- munch isSpace
                                              post <- ReadP.option [] $ pure <$> string "*"
                                              _ <- munch isSpace
                                              name <- munch1 isValidC
                                              _ <- munch isSpace
                                              (<|>)
                                                ( do _ <- char ','
                                                     _ <- munch isSpace
                                                     nextpre <- ReadP.option [] compositeP
                                                     return (name, post, False, nextpre)
                                                ) $
                                                  do _ <- char ')'
                                                     _ <- munch isSpace
                                                     _ <- char ';'
                                                     _ <- munch isSpace
                                                     return (name, post, True, [])

            type_ <- case pickComplexType emptyNamespace pre rawtype post [] Nothing of
                       Just type_ -> return type_
                       Nothing    -> fail "Cannot pick field type"

            if atEnd
              then do end
                      return [Field name type_ Nothing]
              else (:) (Field name type_ Nothing) <$> subfield nextpre

      fields <- subfield pre0
      return (stname, FuncPointer rettype fields)



distillFuncPointers :: SortedRegistry -> Distillery (Map String FuncPointer)
distillFuncPointers sreg = case Map.lookup (Just "funcpointer") (getField @"types" sreg) of
                             Nothing       -> return Map.empty
                             Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "funcpointer"
      case getField @"flavor" t of
        TypeOne (f:fs) -> do
          (name, funptr) <- condense condenseFuncPointer $ f :| fs
          return $ Map.insert name funptr ms

        _ -> fail "Unsupported flavor"



distillEnumStubs :: SortedRegistry -> Distillery (Map String EnumStub)
distillEnumStubs sreg = case Map.lookup (Just "enum") (getField @"types" sreg) of
                          Nothing       -> return Map.empty
                          Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "enum"
      case getField @"name" t of
        Nothing              -> fail "No name"
        Just (TypeName name) ->
          let flavor = case getField @"alias" t of
                         Nothing    -> EnumStub
                         Just alias -> EnumStubAlias alias
          in pure $ Map.insert name flavor ms



condenseBitmaskStub :: Condenser (String, String)
condenseBitmaskStub = do
  raw $ do
    _ <- munch isSpace
    _ <- string "typedef"
    _ <- munch isSpace
    return ()

  type_ <- tagged "type" $
             munch isAlphaNum

  name <- tagged "name" $
            munch isAlphaNum

  raw $ do
    _ <- munch isSpace
    _ <- char ';'
    _ <- munch isSpace
    return ()

  return (name, type_)

distillBitmaskStubs :: SortedRegistry -> Distillery (Map String BitmaskStub)
distillBitmaskStubs sreg = case Map.lookup (Just "bitmask") (getField @"types" sreg) of
                             Nothing       -> return Map.empty
                             Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "bitmask"
      case getField @"alias" t of
        Nothing    -> do
          mark "bitmask proper"
          case getField @"flavor" t of
            TypeTwo _      -> fail "Second type flavor should not occur here"
            TypeOne []     -> fail "Empty first type flavor"
            TypeOne (f:fs) -> do
              (name, type_) <- condense condenseBitmaskStub $ f :| fs
              let bitap = case getField @"bitvalues" t of
                            Just bitval -> Map.insert bitval (BitmaskStub type_)
                            Nothing     -> id

                  reqap = case getField @"requires" t of
                            Just reqval -> Map.insert reqval (BitmaskStub type_)
                            Nothing     -> id

              pure . bitap . reqap $ Map.insert name (BitmaskStub type_) ms

        Just alias -> do
          mark $ "bitmask alias to " <> alias
          case getField @"name" t of
            Nothing              -> fail "No name for alias"
            Just (TypeName name) ->
              pure $ Map.insert name (BitmaskStubAlias alias) ms



condenseHandle :: Condenser (String, Handle)
condenseHandle = do
  hand <- tagged "type" $
                (Handle <$ string "VK_DEFINE_HANDLE")
            <|> (NonDispatchableHandle <$ string "VK_DEFINE_NON_DISPATCHABLE_HANDLE")
            <|> pfail

  raw $ do
    _ <- munch isSpace
    _ <- char '('
    _ <- munch isSpace
    return ()

  name <- tagged "name" $
            munch isAlphaNum

  raw $ do
    _ <- munch isSpace
    _ <- char ')'
    _ <- munch isSpace
    return ()

  return (name, hand)



distillHandles :: SortedRegistry -> Distillery (Map String Handle)
distillHandles sreg = case Map.lookup (Just "handle") (getField @"types" sreg) of
                        Nothing       -> return Map.empty
                        Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "handle"
      case getField @"alias" t of
        Nothing    -> do
          mark $ "handle proper"
          case getField @"flavor" t of
            TypeTwo _      -> fail "Second type flavor should not occur here"
            TypeOne []     -> fail "Empty first type flavor"
            TypeOne (f:fs) -> do
              (name, hand) <- condense condenseHandle $ f :| fs
              pure $ Map.insert name hand ms

        Just alias -> do
          mark $ "handle alias to " <> alias
          case getField @"name" t of
            Nothing              -> fail "No name for alias"
            Just (TypeName name) ->
              pure $ Map.insert name (HandleAlias alias) ms



data ListR r a = ConsR a (ListR r a)
               | OneR r
                 deriving Show

condenseArrayLength :: Condenser (NonEmpty ArrayLength)
condenseArrayLength = do
  let consumeLens = do
        _ <- munch isSpace
        dlen <- munch1 isDigit
        len <- case readDec dlen of
                 (len, "") : _ -> return len
                 _             -> fail "Cannot parse length"

        _ <- munch isSpace
        _ <- char ']'
        (<|>)
          ( do _ <- munch isSpace
               _ <- char '['
               rest <- consumeLens
               return $ ConsR len rest
          )
          $ return . ConsR len $ OneR False

  arr0 <- raw $ do
            _ <- char '['
            consumeLens <|> return (OneR True)

  let consumeEnums = do
        enum <- tagged "enum" $
                  munch isValidC

        arr <- raw $ do
                 _ <- munch isSpace
                 _ <- char ']'
                 consumeLens <|> return (OneR False)

        return (enum, arr)

      loop (ConsR a as) = (ArrayLength a :) <$> loop as
      loop (OneR True)  = do (enum, arr) <- consumeEnums
                             (ArrayEnum enum :) <$> loop arr

      loop (OneR False) = return []

  case arr0 of
    ConsR a as -> (ArrayLength a :|) <$> loop as
    OneR True  -> do (enum, arr) <- consumeEnums
                     (ArrayEnum enum :|) <$> loop arr

    OneR False -> fail "Immediate end of array"



condenseField :: Namespace -> Condenser Field
condenseField ns = do
  pre <- Condenser.option [] . raw $ do
                                 _ <- munch isSpace
                                 compositeP

  rawtype <- tagged "type" $
               munch1 isValidC

  post <- Condenser.option [] . raw $ do
                                  _ <- munch isSpace
                                  compositeP

  name <- tagged "name" $
            munch1 isValidC

  arrlen <- Condenser.option [] $ NonEmpty.toList <$> condenseArrayLength

  mayBits <- Condenser.option Nothing . raw $ do
                                          _ <- munch isSpace
                                          _ <- char ':'
                                          _ <- munch isSpace
                                          dlen <- munch1 isDigit
                                          len <- case readDec dlen of
                                                   (len, "") : _ -> return len
                                                   _             -> fail "Cannot parse length"
                                          return $ Just len

  mayComment <- Condenser.option Nothing . tagged "comment" $
                                             Just <$> do munch1 $ \_ -> True

  end

  type_ <- case pickComplexType ns pre rawtype post arrlen mayBits of
             Just type_ -> return type_
             Nothing    -> fail "Cannot pick type"

  return Field
           { name    = name
           , type_   = type_
           , comment = mayComment
           }



distillStructs :: Namespace -> SortedRegistry -> Distillery (Map String Struct)
distillStructs ns sreg = case Map.lookup (Just "struct") (getField @"types" sreg) of
                           Nothing       -> return Map.empty
                           Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "struct"
      case getField @"name" t of
        Nothing              -> fail "No name for struct"
        Just (TypeName name) ->
          case getField @"alias" t of
            Nothing -> do
              mark $ "struct " <> name
              case getField @"flavor" t of
                TypeOne _       -> fail "First type flavor should not occur here"
                TypeTwo members -> do
                  fields <- for (zip members [0..]) $ \(typeTwo, n) -> do
                              mark $ "struct " <> name <> ", member #" <> show (n :: Int)
                              case typeTwo of
                                TypeComment _      -> pure Nothing
                                TypeMember _ mixed -> Just <$> condense (condenseField ns) mixed

                  case catMaybes fields of
                    []   -> fail "No members"
                    f:fs -> pure $ Map.insert name (Struct $ f :| fs) ms

            Just alias -> pure $ Map.insert name (StructAlias alias) ms



distillUnions :: Namespace -> SortedRegistry -> Distillery (Map String Union)
distillUnions ns sreg = case Map.lookup (Just "union") (getField @"types" sreg) of
                          Nothing       -> return Map.empty
                          Just includes -> foldlM go Map.empty includes
  where
    go ms (t :: Parser.Type) = do
      context t
      mark "union"
      case getField @"name" t of
        Nothing              -> fail "No name for union"
        Just (TypeName name) ->
          case getField @"alias" t of
            Nothing -> do
              mark $ "union " <> name
              case getField @"flavor" t of
                TypeOne _       -> fail "First type flavor should not occur here"
                TypeTwo members -> do
                  fields <- for (zip members [0..]) $ \(typeTwo, n) -> do
                              mark $ "union " <> name <> ", member #" <> show (n :: Int)
                              case typeTwo of
                                TypeComment _      -> pure Nothing
                                TypeMember _ mixed -> Just <$> condense (condenseField ns) mixed

                  case catMaybes fields of
                    []   -> fail "No members"
                    f:fs -> pure $ Map.insert name (Union $ f :| fs) ms

            Just alias -> pure $ Map.insert name (UnionAlias alias) ms



distillConstants :: SortedRegistry -> Distillery (Map String Constant)
distillConstants sreg = case Map.lookup Nothing (getField @"enums" sreg) of
                          Nothing        -> fail "No API Constants in enums"
                          Just constants -> foldlM go Map.empty constants
  where
    go ms (es :: Enums) = foldlM subgo ms (getField @"enums" es)

    subgo ms (EnumsComment _) = pure ms
    subgo ms (EnumsUnused  _) = pure ms
    subgo ms (EnumsProper e)  = do
      context e
      mark $ "constant " <> getField @"name" e
      case getField @"flavor" e of
        Nothing                    -> fail "Unexpected enumeration reference"
        Just EnumBitmask {}        -> fail "Unexpected bitmask"
        Just EnumExtension {}      -> fail "Unexpected extension"
        Just EnumPlain {..}        -> do
          context $ "constant proper " <> getField @"name" e
          case getField @"type" e of
            Nothing                 -> fail $ "Enumeration has no type"
            Just (TypeSuffix atype) -> do
              type_ <- case pickBasicType emptyNamespace atype of
                         Nothing    -> fail "Unknown type"
                         Just type_ -> return type_
              dist <- distillValue value
              return $ Map.insert (getField @"name" e)
                                  Constant
                                    { type_   = type_
                                    , value   = dist
                                    , comment = getField @"comment" e
                                    }
                                  ms

        Just Parser.EnumAlias {..} -> do
          context $ "constant alias " <> getField @"name" e
          return $ Map.insert (getField @"name" e)
                              ConstantAlias
                                { alias   = let TypeName a = alias
                                            in a
                                , comment = getField @"comment" e
                                }
                              ms



distillEnums :: SortedRegistry -> Distillery (Map String Distillery.Enum)
distillEnums sreg = case Map.lookup (Just "enum") (getField @"enums" sreg) of
                      Nothing        -> fail "No enums in enums"
                      Just constants -> foldlM go Map.empty constants
  where
    go ms (enums :: Enums) = do
      context enums
      mark "enum"
      case getField @"name" enums of
        Nothing   -> fail "No name"
        Just name -> do
          enumerators <- traverse subgo (getField @"enums" enums)
          return $ Map.insert name
                              Distillery.Enum
                                { comment = getField @"comment" enums
                                , enums   = catMaybes enumerators
                                }
                              ms

    subgo (EnumsComment _)   = pure Nothing
    subgo (EnumsUnused  _)   = pure Nothing
    subgo (EnumsProper enum) = do
      context enum
      mark $ "enumerator " <> getField @"name" enum
      case getField @"flavor" enum of
        Nothing                    -> fail "No flavor"
        Just EnumBitmask {}        -> fail "Unexpected bitmask"
        Just EnumExtension {}      -> fail "Unexpected extension"
        Just EnumPlain {..}        -> do
          mark $ "enumerator proper " <> getField @"name" enum
          dist <- distillValue value
          return $ Just Enumerator
                          { name    = getField @"name" enum
                          , value   = dist
                          , comment = getField @"comment" enum
                          }

        Just Parser.EnumAlias {..} ->
          return $ Just EnumeratorAlias
                          { name    = getField @"name" enum
                          , alias   = let TypeName a = alias
                                     in a
                          , comment = getField @"comment" enum
                          }



distillBitmasks :: SortedRegistry -> Distillery (Map String Distillery.Bitmask)
distillBitmasks sreg = case Map.lookup (Just "bitmask") (getField @"enums" sreg) of
                         Nothing        -> fail "No bitmasks in enums"
                         Just constants -> foldlM go Map.empty constants
  where
    go ms (enums :: Enums) = do
      context enums
      mark "bitmask"
      case getField @"name" enums of
        Nothing   -> fail "No name"
        Just name -> do
          width <- case getField @"bitwidth" enums of
                     Nothing                     -> pure Nothing
                     Just (Parser.Integer width) -> do
                       case runReadS readDec width of
                         Just i  -> return $ Just i
                         Nothing -> fail "Bitwidth is not a decimal number"

          bits <- traverse subgo (getField @"enums" enums)
          return $ Map.insert name
                              Distillery.Bitmask
                                { comment = getField @"comment" enums
                                , width   = width
                                , bits    = catMaybes bits
                                }
                              ms

    subgo (EnumsComment _)   = pure Nothing
    subgo (EnumsUnused  _)   = pure Nothing
    subgo (EnumsProper enum) = do
      context enum
      mark $ "bit " <> getField @"name" enum
      case getField @"flavor" enum of
        Nothing                    -> fail "No flavor"
        Just EnumBitmask {..}      -> do
          mark $ "bit proper " <> getField @"name" enum
          let Parser.Integer rawbitpos = bitpos
          case runReadS readDec rawbitpos of
            Nothing  -> fail "Bit position is not a decimal number"
            Just int -> return $ Just Bit
                                        { name    = getField @"name" enum
                                        , bitpos  = int
                                        , comment = getField @"comment" enum
                                        }

        Just EnumExtension {}      -> fail "Unexpected extension"
        Just EnumPlain {..}        -> do
          mark $ "bit enumerator " <> getField @"name" enum
          dist <- distillValue value
          return $ Just BitEnumerator
                          { name    = getField @"name" enum
                          , value   = dist
                          , comment = getField @"comment" enum
                          }

        Just Parser.EnumAlias {..} ->
          return $ Just BitAlias
                          { name    = getField @"name" enum
                          , alias   = let TypeName a = alias
                                      in a
                          , comment = getField @"comment" enum
                          }



distillCommands
  :: Namespace -> SortedRegistry -> Distillery (Map String Distillery.Command)
distillCommands ns sreg = foldlM go Map.empty (getField @"commands" sreg)
  where
    go ms (cs :: Commands) = foldlM subgo ms (getField @"commands" cs)

    subgo ms c = do
      context c
      case c of
        Parser.CommandAlias {} -> do
          return $ Map.insert (getField @"name" c)
                              Distillery.CommandAlias { alias = getField @"alias" c }
                              ms

        Parser.CommandProper {} -> do
          mark "proto"
          let Proto flavor = getField @"proto" c
          proto <- condense (condenseField ns) flavor

          args <- for (zip (getField @"params" c) [0..]) $ \(param, n) -> do
                    mark $ "param #" <> show (n :: Int)
                    field <- condense (condenseField ns) $ getField @"mixed" param
                    return Argument
                             { name  = getField @"name" field
                             , type_ = getField @"type_" field
                             }

          return $ Map.insert (getField @"name" proto)
                              Distillery.Command
                                { arguments = args
                                , return    = getField @"type_" proto
                                }
                              ms



distillFeatures :: SortedRegistry -> Distillery (Map String [Distillery.Feature])
distillFeatures sreg = foldlM go Map.empty (getField @"feature" sreg)
  where
    go ms (feat :: Parser.Feature) = do
      context feat
      mark $ "feature " <> getField @"name" feat
      let XsdFloat rawnumber = getField @"number" feat
      number <- case runReadS readFloat rawnumber of
                  Just number -> return number
                  Nothing     -> fail "Number is not a float"

      blocks <- for (zip (getField @"elements" feat) [0..]) $ \(fel, n) -> do
                  context fel
                  mark $ "feature " <> getField @"name" feat
                                    <> ", block #" <> show (n :: Int)

                  distillBlock (getField @"name" feat) n fel

      let feature = Distillery.Feature
                      { number  = number
                      , name    = getField @"name" feat
                      , protect = getField @"protect" feat
                      , comment = getField @"comment" feat
                      , blocks  = blocks
                      }

      return $ Map.insertWith (\_ -> (:) feature)
                              (getField @"api" feat) [feature] ms

    distillBlock name n fel =
      case fel of
        FeatureRequire {} -> do
          requires <- for (zip (getField @"interfaces" fel) [0..]) $ \(inter, m) -> do
                        context inter
                        mark $ "feature " <> name <> ", block #" <> show (n :: Int)
                                                 <> " element #" <> show (m :: Int)
                        distillRequire inter

          return RequireFeatureBlock
                   { profiles   = maybe [] (recbreak ",") $ getField @"profile"   fel
                   , extensions = maybe [] (recbreak ",") $ getField @"extension" fel
                   , comment    = getField @"comment"    fel
                   , requires   = catMaybes requires
                   }

        FeatureRemove {} -> do
          removes <- for (zip (getField @"interfaces" fel) [0..]) $ \(inter, m) -> do
                       context inter
                       mark $ "feature " <> name <> ", block #" <> show (n :: Int)
                                                <> " element #" <> show (m :: Int)
                       distillRemove inter

          return RemoveFeatureBlock
                   { comment = getField @"comment" fel
                   , removes = catMaybes removes
                   }

    distillRequire (FeatureComment _)       = pure Nothing
    distillRequire (FeatureInterface inter) =
      case inter of
        InterfaceType {}    -> pure $ Just RequireType
                                             { name    = getField @"name" inter
                                             , comment = getField @"comment" inter
                                             }
        InterfaceCommand {} -> pure $ Just RequireCommand
                                             { name    = getField @"name" inter
                                             , comment = getField @"comment" inter
                                             }
        InterfaceEnum enum -> do
          case getField @"flavor" enum of
            Nothing -> pure $ Just RequireEnum
                                     { name    = getField @"name" enum
                                     , comment = getField @"comment" enum
                                     }

            Just flavor@EnumAlias {} ->
              pure $ Just RequireAlias
                            { name     = getField @"name" enum
                            , alias    = (\(TypeName al) -> al) $ getField @"alias" flavor
                            , extends_ = (\(TypeName ex) -> ex) <$> getField @"extends_" flavor
                            , protect  = getField @"protect" enum
                            , comment  = getField @"comment" enum
                            }

            Just flavor@EnumPlain {} -> do
              value <- distillValue $ getField @"value" flavor

              pure $ Just RequireEnumerator
                            { name     = getField @"name" enum
                            , value    = value
                            , extends_ = (\(TypeName ex) -> ex) <$> getField @"extends_" flavor
                            , protect  = getField @"protect" enum
                            , comment  = getField @"comment" enum
                            }

            Just flavor@EnumBitmask {} -> do
              let Parser.Integer rawpos = getField @"bitpos" flavor
              bitpos <- case runReadS readDec rawpos of
                          Nothing     -> fail "Bitpos is not an integer"
                          Just bitpos -> return bitpos

              pure $ Just RequireBit
                            { name     = getField @"name" enum
                            , bitpos   = bitpos
                            , extends_ = (\(TypeName ex) -> ex) <$> getField @"extends_" flavor
                            , protect  = getField @"protect" enum
                            , comment  = getField @"comment" enum
                            }

            Just flavor@EnumExtension {} -> do
              let Parser.Integer rawoff = getField @"offset" flavor
              offset <- case runReadS readDec rawoff of
                          Nothing     -> fail "Offset is not an integer"
                          Just offset -> return offset

              mayExt <- case getField @"extnumber" flavor of
                          Nothing                      -> return Nothing
                          Just (Parser.Integer rawext) ->
                            case runReadS readDec rawext of
                              Nothing       -> fail "Extnumber is not an integer"
                              (Just mayExt) -> return $ Just mayExt

              dir <- case getField @"dir" flavor of
                       Nothing  -> return Nothing
                       Just "-" -> return $ Just Minus
                       Just _   -> fail "Dir is present, but isn't a minus"

              pure $ Just RequireOffset
                            { name      = getField @"name" enum
                            , offset    = offset
                            , extends   = (\(TypeName ex) -> ex) $ getField @"extends" flavor
                            , extnumber = mayExt
                            , dir       = dir
                            , protect   = getField @"protect" enum
                            , comment   = getField @"comment" enum
                            }


    distillRemove (FeatureComment _)       = pure Nothing
    distillRemove (FeatureInterface inter) =
      case inter of
        InterfaceType {}    -> pure $ Just RemoveType
                                             { name = getField @"name" inter
                                             }
        InterfaceCommand {} -> pure $ Just RemoveCommand
                                             { name = getField @"name" inter
                                             }
        InterfaceEnum enum  -> do
          case getField @"flavor" enum of
            Nothing -> pure $ Just RemoveEnum
                                     { name = getField @"name" enum
                                     }

            Just _flavor -> fail "Unexpected flavor"



recbreak :: Eq a => [a] -> [a] -> [[a]]
recbreak = sub []
  where
    sub []  _     []  = []
    sub acc _     []  = [acc]
    sub acc ss (b:bs) | elem b ss = acc : sub [] ss bs
                      | otherwise = sub (acc <> [b]) ss bs



distillExtensions :: SortedRegistry -> Distillery (Map String Distillery.Extension)
distillExtensions sreg = foldlM go Map.empty (getField @"extensions" sreg)
  where
    go ms (exts :: Extensions) = foldlM subgo ms (getField @"extensions" exts)

    subgo ms (ext :: Parser.Extension) = do
      context ext
      mark $ "extension" <> getField @"name" ext

      number <- case getField @"number" ext of
                  Nothing                         -> return Nothing
                  Just (Parser.Integer rawnumber) ->
                    case runReadS readDec rawnumber of
                      Just number -> return $ Just number
                      Nothing     -> fail "Number is not an integer"

      requiresCore <- case getField @"requiresCore" ext of
                        Nothing     -> return Nothing
                        Just rawreq ->
                          case runReadS readFloat rawreq of
                            Just requires -> return $ Just requires
                            Nothing       -> fail "requiresCore is not a float"

      provisional <- case getField @"provisional" ext of
                       Nothing      -> return Nothing
                       Just "true"  -> return $ Just True
                       Just "false" -> return $ Just False
                       Just _       -> fail "provisional is not a boolean"

      blocks <- for (zip (getField @"elements" ext) [0..]) $ \(fel, n) -> do
                  mark $ "extension " <> getField @"name" ext
                                      <> ", block #" <> show (n :: Int)

                  distillBlock (getField @"name" ext) n fel

      return $ Map.insert (getField @"name" ext)
                          Distillery.Extension
                            { number       = number
                            , protect      = getField @"protect" ext
                            , platform     = getField @"platform" ext
                            , author       = getField @"author" ext
                            , contact      = getField @"contact" ext
                            , type_        = getField @"type" ext
                            , requires     = case getField @"requires" ext of
                                               Nothing   -> []
                                               Just reqs -> recbreak "," reqs

                            , requiresCore = requiresCore
                            , supported    = case getField @"supported" ext of
                                               Nothing                 -> []
                                               Just (StringGroup sups) ->
                                                 recbreak "," sups

                            , promotedto   = getField @"promotedto" ext
                            , deprecatedby = getField @"deprecatedby" ext
                            , obsoletedby  = getField @"obsoletedby" ext
                            , provisional  = provisional
                            , specialuse   = case getField @"specialuse" ext of
                                               Nothing   -> []
                                               Just reqs -> recbreak "," reqs

                            , blocks       = blocks
                            }
                          ms

    distillBlock name n fel =
      case fel of
        ExtensionRequire {} -> do
          requires <- for (zip (getField @"interfaces" fel) [0..]) $ \(inter, m) -> do
                        mark $ "extension " <> name <> ", block #" <> show (n :: Int)
                                                   <> " element #" <> show (m :: Int)

                        distillRequire inter

          return RequireExtensionBlock
                   { api        = getField @"api" fel
                   , profiles   = maybe [] (recbreak ",") $ getField @"profile" fel

                   -- This is a massive hack. As of v1.3 the only two places where multiple
                   -- extensions are mentioned are with a comma and with a plus; what these
                   -- characters mean is not explained and extensions used in those clauses
                   -- have been excluded as they involve bitfield structs.
                   -- Down the line Mixer treats extension lists as sums, but this ultimately
                   -- doesn't matter as every viable extension list right now has a size of 1.
                   , extensions = maybe [] (recbreak ",+") $ getField @"extension" fel
                   , features   = maybe [] (recbreak ",") $ getField @"feature" fel
                   , comment    = getField @"comment" fel
                   , requires   = catMaybes requires
                   }

        ExtensionRemove {} -> do
          removes <- for (zip (getField @"interfaces" fel) [0..]) $ \(inter, m) -> do
                       mark $ "extension " <> name <> ", block #" <> show (n :: Int)
                                                  <> " element #" <> show (m :: Int)

                       distillRemove inter

          return RemoveExtensionBlock
                   { comment = getField @"comment" fel
                   , removes = catMaybes removes
                   }

    distillRequire (ExtensionComment _)       = pure Nothing
    distillRequire (ExtensionInterface inter) =
      case inter of
        InterfaceType {}    -> pure $ Just RequireType
                                             { name    = getField @"name" inter
                                             , comment = getField @"comment" inter
                                             }
        InterfaceCommand {} -> pure $ Just RequireCommand
                                             { name    = getField @"name" inter
                                             , comment = getField @"comment" inter
                                             }
        InterfaceEnum enum -> do
          case getField @"flavor" enum of
            Nothing -> pure $ Just RequireEnum
                                     { name = getField @"name" enum
                                     , comment   = getField @"comment" enum
                                     }

            Just flavor@EnumAlias {} ->
              pure $ Just RequireAlias
                            { name     = getField @"name" enum
                            , alias    = (\(TypeName al) -> al) $ getField @"alias" flavor
                            , extends_ = (\(TypeName ex) -> ex) <$> getField @"extends_" flavor
                            , protect  = getField @"protect" enum
                            , comment   = getField @"comment" enum
                            }

            Just flavor@EnumPlain {} -> do
              value <- distillValue $ getField @"value" flavor

              pure $ Just RequireEnumerator
                            { name    = getField @"name" enum
                            , value   = value
                            , extends_ = (\(TypeName ex) -> ex) <$> getField @"extends_" flavor
                            , protect = getField @"protect" enum
                            , comment   = getField @"comment" enum
                            }

            Just flavor@EnumBitmask {} -> do
              let Parser.Integer rawpos = getField @"bitpos" flavor
              bitpos <- case runReadS readDec rawpos of
                          Nothing     -> fail "Bitpos is not an integer"
                          Just bitpos -> return bitpos

              pure $ Just RequireBit
                            { name     = getField @"name" enum
                            , bitpos   = bitpos
                            , extends_ = (\(TypeName ex) -> ex) <$> getField @"extends_" flavor
                            , protect  = getField @"protect" enum
                            , comment   = getField @"comment" enum
                            }

            Just flavor@EnumExtension {} -> do
              let Parser.Integer rawoff = getField @"offset" flavor
              offset <- case runReadS readDec rawoff of
                          Nothing     -> fail "Offset is not an integer"
                          Just offset -> return offset

              mayExt <- case getField @"extnumber" flavor of
                          Nothing                      -> return Nothing
                          Just (Parser.Integer rawext) ->
                            case runReadS readDec rawext of
                              Nothing       -> fail "Extnumber is not an integer"
                              (Just mayExt) -> return $ Just mayExt

              dir <- case getField @"dir" flavor of
                       Nothing  -> return Nothing
                       Just "-" -> return $ Just Minus
                       Just _   -> fail "Dir is present, but isn't a minus"

              pure $ Just RequireOffset
                            { name      = getField @"name" enum
                            , offset    = offset
                            , extends   = (\(TypeName ex) -> ex) $ getField @"extends" flavor
                            , extnumber = mayExt
                            , dir       = dir
                            , protect   = getField @"protect" enum
                            , comment   = getField @"comment" enum
                            }


    distillRemove (ExtensionComment _)       = pure Nothing
    distillRemove (ExtensionInterface inter) =
      case inter of
        InterfaceType {}    -> pure $ Just RemoveType
                                             { name = getField @"name" inter
                                             }
        InterfaceCommand {} -> pure $ Just RemoveCommand
                                             { name = getField @"name" inter
                                             }
        InterfaceEnum enum  -> do
          case getField @"flavor" enum of
            Nothing -> pure $ Just RemoveEnum
                                     { name = getField @"name" enum
                                     }

            Just _flavor -> fail "Unexpected flavor"



distill :: Registry -> Either (NonEmpty (Maybe String, Maybe String, String)) Fractions
distill reg =
  let sreg = sortRegistry reg
  in runDistillery $ do
       protected <- distillProtected sreg
       bases <- distillBases sreg
       let ns = Namespace protected bases

       -- The enum/bitmask separation of the XML document is vague and certain bitmasks
       -- are declared as enums while the only way of properly linking them is through the
       -- "requires"/"bitvalues" field of other flags. As such bitmask stub lookup is allowed
       -- to add these relative fields and they must be expluded from enum lists.
       enumStubs0 <- distillEnumStubs sreg
       bitmaskStubs <- distillBitmaskStubs sreg
       let enumStubs = Map.difference enumStubs0 bitmaskStubs

       Fractions
         <$> distillPlatforms sreg
         <*> distillTags sreg
         <*> do Distillery.Types
                  <$> distillIncludes sreg
                  <*> pure protected
                  <*> distillDefines sreg
                  <*> pure bases
                  <*> pure enumStubs
                  <*> pure bitmaskStubs
                  <*> distillFuncPointers sreg
                  <*> distillHandles sreg
                  <*> distillStructs ns sreg
                  <*> distillUnions ns sreg
         <*> distillConstants sreg
         <*> distillEnums sreg
         <*> distillBitmasks sreg
         <*> distillCommands ns sreg
         <*> distillFeatures sreg
         <*> distillExtensions sreg



showErrors :: NonEmpty (Maybe String, Maybe String, String) -> String
showErrors errs =
  (\f -> foldr f [] errs) $ \(mcon, mmrk, err) acc ->
    mconcat
      [ case mcon of
          Nothing  -> "No context\n"
          Just con -> "Context: " <> con <> "\n"
      , case mmrk of
          Nothing  -> "No mark\n"
          Just mrk -> "Mark: " <> mrk <> "\n"
      , err <> "\n"
      , acc
      ]




purgeProtects :: [String] -> Fractions -> Fractions
purgeProtects strs Fractions { bitmasks = bitmasks', enums = enums', .. } =
  Fractions
    { types = let Distillery.Types {..} = types
              in Distillery.Types { protects = foldr Map.delete protects strs, .. }
    , bitmasks = bitmasks'
    , enums    = enums'
    , ..
    }

purgeExtensions :: [String] -> Fractions -> Fractions
purgeExtensions strs Fractions {..} =
  Fractions { extensions = foldr Map.delete extensions strs, .. }
