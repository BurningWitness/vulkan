{-# LANGUAGE DataKinds
           , DisambiguateRecordFields
           , DuplicateRecordFields
           , NoFieldSelectors
           , RecordWildCards
           , TypeApplications #-}

module Autogen.Mixer
  ( Category (..)
  , Augments (..)
  , Class (..)
  , mix
  ) where

import           Autogen.Cabal.Types as Cabal
import           Autogen.Distillery.Types as Distillery
import           Autogen.Mixer.Types as Mixer

import           Control.Applicative hiding (Const)
import           Data.Bits
import           Data.Foldable
import           Data.Functor
import qualified Data.List as List
import           Data.Map (Map)
import qualified Data.Map as Map
import           Data.Set (Set)
import qualified Data.Set as Set
import           Data.Traversable
import           GHC.Records
import           Numeric



addFeature :: String -> FeatureTag -> MentionTag -> MentionTag
addFeature api tag (MentionTag feats exts) =
  MentionTag (Map.insertWith min api tag feats) exts

addExtension :: String -> ExtensionTag -> MentionTag -> MentionTag
addExtension ext reqs (MentionTag feats exts) =
  MentionTag feats $ Map.insertWith (<>) ext reqs exts     



emptyMentions :: Mentions
emptyMentions = Mentions Map.empty Map.empty Map.empty Map.empty

type SortedMentions = Map Category (Map String MentionTag)

foldlMWithKey :: Monad m => (b -> k -> a -> m b) -> b -> Map k a -> m b
foldlMWithKey f = flip $ Map.foldrWithKey (\x y k z -> f z x y >>= k) pure

sortTypeMentions :: Fractions -> Mentions -> Either String SortedMentions
sortTypeMentions frac mentions =
  let funs = Map.singleton Function $ getField @"commands" mentions
  in foldlMWithKey go funs (getField @"types" mentions)
  where
    go :: SortedMentions -> String -> MentionTag -> Either String SortedMentions
    go acc str tag = do
      cat <- categorize frac str
      Right $ Map.insertWith (\_ -> Map.insert str tag) cat (Map.singleton str tag) acc

mentionEnum
 :: (MentionTag -> MentionTag) -> String -> String -> OrAlias (Value Integer) -> Maybe String -> Maybe String -> Mentions -> Mentions
mentionEnum f extends name' val protect' comment' Mentions {..} =
  Mentions
    { enums =
        (\g -> Map.alter g extends enums) $ \mayVal ->
          case mayVal of
            Just vals ->
              let (ment, acc') =
                    (\g -> foldr g (False, []) vals) $ \MentionEnum {..} (mentioned, acc) ->
                      if name == name'
                        then (True     , MentionEnum { tag = f tag, .. } : acc)
                        else (mentioned, MentionEnum {..} : acc)

              in if ment
                   then Just acc'
                   else Just $ acc' <> [MentionEnum name' val protect' comment' (f mempty)]

            Nothing -> Just [MentionEnum name' val protect' comment' $ f mempty]
    , ..
    }

mentionEnumAlias
 :: (MentionTag -> MentionTag) -> String -> String -> Mentions -> Mentions
mentionEnumAlias f extends name' Mentions {..} =
  Mentions
    { enums =
        (\g -> Map.adjust g extends enums) $ \vals ->
           (\g -> foldr g [] vals) $ \MentionEnum {..} acc ->
             if name == name'
               then MentionEnum { tag = f tag, .. } : acc
               else MentionEnum {..} : acc
    , ..
    }

mentionEnumerator :: String -> String -> Value Integer -> Mentions -> Mentions
mentionEnumerator ext name val Mentions {..} =
  Mentions
    { enumerators =
        (\f -> Map.alter f ext enumerators) $ \mayEnum ->
          Just $ case mayEnum of
                   Nothing   -> Map.singleton name val
                   Just enum -> Map.insert name val enum
    , ..
    }

mentionType :: (MentionTag -> MentionTag) -> String -> Mentions -> Mentions
mentionType f name Mentions {..} =
  Mentions
    { types = Map.alter (Just . maybe (f mempty) f) name types
    , ..
    }

mentionCommand :: (MentionTag -> MentionTag) -> String -> Mentions -> Mentions
mentionCommand f name Mentions {..} =
  Mentions
    { commands = Map.alter (Just . maybe (f mempty) f) name commands
    , ..
    }



-- | As of Vulkan 1.3 there have been no removals, so this sidecase is not implemented.
premixFeatureBlock :: String -> FeatureTag -> Mentions -> Distillery.FeatureBlock -> Either String Mentions
premixFeatureBlock _api _tag _ment RemoveFeatureBlock {} =
  Left "The generator does not handle feature block removals"

premixFeatureBlock api tag ment0 block@RequireFeatureBlock {} =
  foldlM mixRequire ment0 $ getField @"requires" block
  where
    mixRequire :: Mentions -> Distillery.Require -> Either String Mentions
    mixRequire ment req =
      case req of
        Distillery.RequireType name _   -> Right $ mentionType (addFeature api tag) name ment
        Distillery.RequireEnum _ _      -> Right ment
        Distillery.RequireEnumerator {} ->
          Right $
            case getField @"extends_" req of
              Nothing  -> ment
              Just ext -> mentionEnum (addFeature api tag) ext (getField @"name" req) (Normal $ getField @"value" req) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireAlias {} ->
          Right $
            case getField @"extends_" req of
              Nothing  -> ment
              Just ext ->
                mentionEnumAlias (addFeature api tag) ext (getField @"alias" req) $
                  mentionEnum (addFeature api tag) ext (getField @"name" req) (Alias $ getField @"alias" req) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireBit {} ->
          let val = Integral . setBit 0 . fromIntegral $ getField @"bitpos" req
          in Right $
               case getField @"extends_" req of
                 Nothing  -> ment
                 Just ext ->
                   mentionEnum (addFeature api tag) ext (getField @"name" req) (Normal val) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireOffset {} -> do
          val <- case getField @"extnumber" req of
                   Just number -> Right . Integral $ moldOffset number (getField @"offset" req) (getField @"dir" req)
                   Nothing     ->
                     Left $ "Enumerator " <> getField @"name" req <> " has no extension number"
          Right $
            let ext = getField @"extends" req
            in mentionEnum (addFeature api tag) ext (getField @"name" req) (Normal val) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireCommand cmd _ ->
          Right $ mentionCommand (addFeature api tag) cmd ment



premixFeatures :: Fractions -> Mentions -> Either String Mentions
premixFeatures frac ment0 = foldlMWithKey compound ment0 (getField @"features" frac)
  where
    compound :: Mentions -> String -> [Distillery.Feature] -> Either String Mentions
    compound ment api feats =
      foldlM (go api) ment $ List.sortOn (getField @"number") feats

    go :: String -> Mentions -> Distillery.Feature -> Either String Mentions
    go api ment feat =
      let tag = FeatureTag
                  { number = getField @"number" feat
                  , name   = getField @"name"   feat
                  }
      in foldlM (premixFeatureBlock api tag) ment $ getField @"blocks" feat



-- | As of Vulkan 1.3 there have been no removals, so this sidecase is not implemented.
premixExtensionBlock :: String -> Maybe Integer -> Mentions -> Distillery.ExtensionBlock -> Either String Mentions
premixExtensionBlock _extname _extnumber _ment RemoveExtensionBlock {} =
  Left "The generator does not handle feature block removals"

premixExtensionBlock extname extnumber ment0 block@RequireExtensionBlock {} =
  foldlM mixRequire ment0 $ getField @"requires" block
  where
    tag = ExtensionTag . Set.fromList $ getField @"extensions" block

    mixRequire :: Mentions -> Distillery.Require -> Either String Mentions
    mixRequire ment req =
      case req of
        Distillery.RequireType name _ -> Right $ mentionType (addExtension extname tag) name ment
        Distillery.RequireEnum _name _ -> Right ment
        Distillery.RequireEnumerator {} ->
          Right $
            case getField @"extends_" req of
              Nothing  -> mentionEnumerator extname (getField @"name" req) (getField @"value" req) ment
              Just ext ->
                mentionEnum (addExtension extname tag) ext (getField @"name" req) (Normal $ getField @"value" req) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireAlias {} ->
          Right $
            case getField @"extends_" req of
              Nothing  -> ment
              Just ext ->
                mentionEnumAlias (addExtension extname tag) ext (getField @"alias" req) $
                  mentionEnum (addExtension extname tag) ext (getField @"name" req) (Alias $ getField @"alias" req) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireBit {} ->
          let val = Integral . setBit 0 . fromIntegral $ getField @"bitpos" req
          in Right $
               case getField @"extends_" req of
                 Nothing  -> ment
                 Just ext ->
                   mentionEnum (addExtension extname tag) ext (getField @"name" req) (Normal val) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireOffset {} -> do
          val <- case getField @"extnumber" req <|> extnumber of
                   Just number -> Right . Integral $ moldOffset number (getField @"offset" req) (getField @"dir" req)
                   Nothing     ->
                     Left $ "Enumerator " <> getField @"name" req <> " has no extension number"
          Right $
            let ext = getField @"extends" req
            in mentionEnum (addExtension extname tag) ext (getField @"name" req) (Normal val) (getField @"protect" req) (getField @"comment" req) ment

        Distillery.RequireCommand name _ ->
          Right $ mentionCommand (addExtension extname tag) name ment



premixExtensions :: Fractions -> Mentions -> Either String Mentions
premixExtensions frac ment0 =
  foldlM go ment0 (List.sortOn (getField @"number" . snd) . Map.toList $ getField @"extensions" frac)
  where
    go :: Mentions -> (String, Distillery.Extension) -> Either String Mentions
    go ment (name, ext) =
      if any (== "disabled") (getField @"supported" ext)
        then Right ment
        else foldlM (premixExtensionBlock name (getField @"number" ext)) ment $ getField @"blocks" ext



categorize :: Fractions -> String -> Either String Category
categorize frac name =
  let guarding a m = if Map.member name m then [a] else []

      total = [ guarding Mixer.Include . getField @"includes" $ getField @"types" frac
              , guarding Mixer.Protected . getField @"protects" $ getField @"types" frac
              , guarding Mixer.Define . getField @"defines" $ getField @"types" frac
              , guarding Mixer.Basic  . getField @"bases" $ getField @"types" frac
              , if Map.member name (getField @"enums" $ getField @"types" frac)
                     || Map.member name (getField @"bitmasks" $ getField @"types" frac)
                  then [Mixer.EnumCat]
                  else []

              , guarding Mixer.FuncPointerCat . getField @"funcpointers" $ getField @"types" frac
              , guarding Mixer.Handle . getField @"handles" $ getField @"types" frac
              , guarding Mixer.StructCat . getField @"structs" $ getField @"types" frac
              , guarding Mixer.UnionCat . getField @"unions" $ getField @"types" frac
              ]

  in case mconcat total of
       [t] -> Right t
       []  -> Left $ name <> " belongs to no category"
       ts  -> Left $ name <> " belongs to multiple categories: " <> show ts



mkVkType :: Fractions -> String -> Either String Mixer.Type
mkVkType frac str = do
  cat <- categorize frac str
  Right $ Mixer.VkType cat str

retype :: Fractions -> Distillery.Type -> Either String Mixer.Type
retype frac = go
  where
    go t0 =
      case t0 of
        Void                   -> Right $ BareType "()"
        Char                   -> Right $ HscType "char"
        Float                  -> Right $ HscType "float"
        Double                 -> Right $ HscType "double"
        Int8                   -> Right $ HscType "int8_t"
        Int16                  -> Right $ HscType "int16_t"
        Int32                  -> Right $ HscType "int32_t"
        Int64                  -> Right $ HscType "int64_t"
        UInt8                  -> Right $ HscType "uint8_t"
        UInt16                 -> Right $ HscType "uint16_t"
        UInt32                 -> Right $ HscType "uint32_t"
        UInt64                 -> Right $ HscType "uint64_t"
        Size                   -> Right $ HscType "size_t"
        Distillery.Int         -> Right $ HscType "int"
        Distillery.VkType str  -> mkVkType frac str

        Bits _ t               -> go t

        Array _len t           -> go t

        Ptr t                  -> Type1 "Ptr" <$> go t

        Distillery.Const t     -> go t

        Distillery.Structure t -> go t



moldOffset :: Integer -> Integer -> Maybe Direction -> Integer
moldOffset extnumber offset Nothing      = 1000000000 + (extnumber - 1) * 1000 + offset
moldOffset extnumber offset (Just Minus) = negate $ moldOffset extnumber offset Nothing



mixEnums :: Fractions -> Mentions -> SortedMentions -> Either String (Map String Mixer.Enum)
mixEnums frac mentions sorted = do
  case Map.lookup EnumCat sorted of
    Nothing    -> Right Map.empty
    Just ens ->
      flip Map.traverseWithKey ens $ \name0 tag -> do
        let mentioned = case Map.lookup name0 $ getField @"enums" mentions of
                          Nothing   -> []
                          Just ment -> ment

            loopStub source name n
              | n > 15    = Left $ "Ran out of loops looking for an alias to enum stub " <> source
              | otherwise =
                  case Map.lookup name (getField @"bitmasks" $ getField @"types" frac) of
                    Nothing                  ->
                      case Map.lookup name (getField @"enums" $ getField @"types" frac) of
                        Nothing                    -> Left $ "Could not find enum stub " <> name
                        Just (EnumStubAlias alias) -> loopStub source alias (n + 1)
                        Just EnumStub              -> Right Mixer.Int

                    Just (BitmaskStubAlias alias) -> loopStub source alias (n + 1)
                    Just (BitmaskStub stubtype)   -> Custom <$> mkVkType frac stubtype

            lookupCore name =
              case Map.lookup name (getField @"bitmasks" frac) of
                Nothing ->
                  case Map.lookup name (getField @"enums" frac) of
                    Nothing       ->
                      ( Left []
                      , \type_ pieces -> Mixer.Enum
                                           { comment = Nothing
                                           , type_   = type_
                                           , enums   = pieces
                                           , tags    = tag
                                           }
                      )

                    Just realEnum ->
                      ( Left $ getField @"enums" realEnum
                      , \type_ pieces -> Mixer.Enum
                                           { comment = getField @"comment" realEnum
                                           , type_   = type_
                                           , enums   = pieces
                                           , tags    = tag
                                           }
                      )

                Just realBitmask ->
                  ( Right $ getField @"bits" realBitmask
                  , \type_ pieces -> Mixer.Enum
                                       { comment = getField @"comment" realBitmask
                                       , type_   = type_
                                       , enums   = pieces
                                       , tags    = tag
                                       }
                  )

            dealiasEnum :: Either Distillery.Enumerator MentionEnum -> [Distillery.Enumerator] -> [MentionEnum] -> Either Distillery.Enumerator MentionEnum -> Int -> Either String Mixer.Enumerator
            dealiasEnum source enums ments part n
              | n > 15    = Left $ "Could not find alias for enum " <> either (getField @"name") (getField @"name") source
              | otherwise = do
                  case part of
                    Left e@Distillery.Enumerator {} ->
                      Right Mixer.Enumerator
                              { comment   = either (getField @"comment") (getField @"comment") source
                              , name      = either (getField @"name")    (getField @"name")    source
                              , value     = getField @"value" e
                              , tags      = tag
                              }

                    Left e@EnumeratorAlias {}       ->
                      case find ((== getField @"alias" e) . getField @"name") enums of
                        Nothing  ->
                          case find ((== getField @"alias" e) . getField @"name") ments of
                            Nothing -> Left $ "No alias for enumerator " <> either (getField @"name") (getField @"name") source
                            Just m  -> dealiasEnum source enums ments (Right m) (n + 1)
                        Just e2  -> dealiasEnum source enums ments (Left e2) (n + 1)

                    Right m@MentionEnum {}          ->
                      case getField @"flavor" m of
                        Normal value ->
                          Right Mixer.Enumerator
                                 { comment   = either (getField @"comment") (getField @"comment") source
                                 , name      = either (getField @"name")    (getField @"name")    source
                                 , value     = value
                                 , tags      = either (const tag) (getField @"tag") source
                                 }

                        Alias alias  ->
                          case find ((== alias) . getField @"name") enums of
                            Nothing  ->
                              case find ((== alias) . getField @"name") ments of
                                Nothing -> Left $ "No alias for enumerator " <> either (getField @"name") (getField @"name") source
                                Just m2 -> dealiasEnum source enums ments (Right m2) (n + 1)
                            Just e  -> dealiasEnum source enums ments (Left e) (n + 1)

            dealiasBit :: Either Bit MentionEnum -> [Bit] -> [MentionEnum] -> Either Bit MentionEnum -> Int -> Either String Mixer.Enumerator
            dealiasBit source bits ments part n
              | n > 15    = Left $ "Could not find alias for bit " <> either (getField @"name") (getField @"name") source
              | otherwise = do
                  case part of
                    Left b@Distillery.Bit {} ->
                      let value = Integral . setBit 0 . fromIntegral $ getField @"bitpos" b
                      in Right Mixer.Enumerator
                                 { comment   = either (getField @"comment") (getField @"comment") source
                                 , name      = either (getField @"name")    (getField @"name")    source
                                 , value     = value
                                 , tags      = tag
                                 }

                    Left b@Distillery.BitEnumerator {} ->
                      Right Mixer.Enumerator
                              { comment   = either (getField @"comment") (getField @"comment") source
                              , name      = either (getField @"name")    (getField @"name")    source
                              , value     = getField @"value" b
                              , tags      = tag
                              }

                    Left b@BitAlias {}       ->
                      case find ((== getField @"alias" b) . getField @"name") bits of
                        Nothing  ->
                          case find ((== getField @"alias" b) . getField @"name") ments of
                            Nothing -> Left $ "No alias for bit " <> either (getField @"name") (getField @"name") source
                            Just m  -> dealiasBit source bits ments (Right m) (n + 1)
                        Just b2  -> dealiasBit source bits ments (Left b2) (n + 1)

                    Right m@MentionEnum {}          ->
                      case getField @"flavor" m of
                        Normal value ->
                          Right Mixer.Enumerator
                                 { comment   = either (getField @"comment") (getField @"comment") source
                                 , name      = either (getField @"name")    (getField @"name")    source
                                 , value     = value
                                 , tags      = either (const tag) (getField @"tag") source
                                 }

                        Alias alias  ->
                          case find ((== alias) . getField @"name") bits of
                            Nothing  ->
                              case find ((== alias) . getField @"name") ments of
                                Nothing -> Left $ "No alias for bit " <> either (getField @"name") (getField @"name") source
                                Just m2 -> dealiasBit source bits ments (Right m2) (n + 1)
                            Just b   -> dealiasBit source bits ments (Left b) (n + 1)

            sequenceDealias (Left enums) rest = do
              top    <- traverse (\e -> dealiasEnum (Left e)  enums rest (Left e)  0) enums
              bottom <- traverse (\m -> dealiasEnum (Right m) enums rest (Right m) 0) rest
              Right $ top <> bottom

            sequenceDealias (Right bits) rest = do
              top    <- traverse (\b -> dealiasBit (Left b)  bits rest (Left b)  0) bits
              bottom <- traverse (\m -> dealiasBit (Right m) bits rest (Right m) 0) rest
              Right $ top <> bottom

        type_ <- loopStub name0 name0 (0 :: Int)
        let (core, shell) = lookupCore name0
        enumlist <- sequenceDealias core mentioned
        Right $ shell type_ enumlist



mixProtects :: Fractions -> SortedMentions -> Either String (Map String Protect)
mixProtects frac _sorted =
  (\f -> foldlMWithKey f Map.empty . getField @"protects" $ getField @"types" frac) $ \acc name protect ->
    case protect of
      NotProtected           -> Right $ Map.insert name NoProtect acc
      Distillery.Protected s -> Right $ Map.insert name (Protect s) acc



mixBases :: Fractions -> SortedMentions -> Either String (Map String Mixer.Base)
mixBases frac sorted =
  case Map.lookup Mixer.Basic sorted of
    Nothing    -> Left "No mentions of bases?"
    Just bases ->
      flip Map.traverseWithKey (getField @"bases" $ getField @"types" frac) $ \name base -> do
        tags <- case name of
                  "__IOSurface" -> case Map.lookup "IOSurfaceRef" bases of
                                     Nothing  -> Left "__IOSurface exists, but not IOSurfaceRef"
                                     Just tag -> Right tag

                  _             -> case Map.lookup name bases of
                                     Nothing  -> Right mempty
                                     Just tag -> Right tag
        case base of
          Distillery.Opaque    -> Right $ Base tags Mixer.Opaque
          Distillery.Synonym t -> do t' <- retype frac t
                                     Right . Base tags $ Mixer.Synonym t'



mixConstants :: Fractions -> Either String (Map String Mixer.Constant)
mixConstants frac =
  flip Map.traverseWithKey (getField @"constants" frac) $ \name constant ->
    case constant of
      Distillery.Constant {} ->
        Right Mixer.Constant
                { value   = getField @"value" constant
                , comment = getField @"comment" constant
                }

      ConstantAlias {}       ->
        case Map.lookup (getField @"alias" constant) (getField @"constants" frac) of
          Nothing -> Left $ "Cannot find alias for constant " <> name
          Just ConstantAlias {} ->
            Left $ "Constant " <> name <> " aliases onto an alias"

          Just aliased@Distillery.Constant {} ->
            Right Mixer.Constant
                    { value   = getField @"value" aliased
                    , comment = getField @"comment" constant
                    }



mixFuncPointers :: Fractions -> SortedMentions -> Either String (Map String Mixer.FuncPointer)
mixFuncPointers frac sorted =
  case Map.lookup Mixer.FuncPointerCat sorted of
    Nothing      -> Left "No mentions of funcpointers?"
    Just funptrs ->
      flip Map.traverseWithKey funptrs $ \name _mentionTag ->
        case Map.lookup name (getField @"funcpointers" $ getField @"types" frac) of
          Nothing              -> Left $ "No funcpointer " <> name
          Just realFuncPointer ->
            case realFuncPointer of
              Distillery.VoidPointer Distillery.Void -> Right Mixer.VoidPointer

              Distillery.VoidPointer _rettype        ->
                Left $ "Funcpointer " <> name <> " has an unsupported shape"

              Distillery.FuncPointer {}              -> do
                fields' <- for (getField @"fields" realFuncPointer) $ \field -> do
                             t' <- retype frac $ getField @"type_" field
                             Right Mixer.Field
                                     { name    = getField @"name" field
                                     , type_   = t'
                                     , comment = getField @"comment" field
                                     }

                ret' <- retype frac $ getField @"return" realFuncPointer

                Right Mixer.FuncPointer
                        { return    = ret'
                        , fields    = fields'
                        }



mixHandles :: Fractions -> SortedMentions -> Either String (Map String Mixer.Handle)
mixHandles frac sorted =
  case Map.lookup Mixer.Handle sorted of
    Nothing      -> Left "No mentions of handles?"
    Just handles ->
      let loop source name n
            | n > 15    = Left $ "Ran out of loops looking up alias for handle " <> source
            | otherwise =
                case Map.lookup name (getField @"handles" $ getField @"types" frac) of
                  Nothing         -> Left $ "No handle " <> name
                  Just realHandle ->
                    case realHandle of
                      Distillery.Handle                -> Right Mixer.DispatchableHandle
                      Distillery.NonDispatchableHandle -> Right Mixer.NonDispatchableHandle
                      Distillery.HandleAlias alias     -> loop source alias (n + 1)

      in flip Map.traverseWithKey handles $ \name _mentionTag ->
           loop name name (0 :: Int)



mixStructs :: Fractions -> SortedMentions -> Either String (Map String Mixer.Struct)
mixStructs frac sorted =
  case Map.lookup Mixer.StructCat sorted of
    Nothing     -> Left "No mentions of structs?"
    Just structs ->
      flip Map.traverseWithKey structs $ \name0 mentionTag ->
        let loop source name n
              | n > 15    = Left $ "Ran out of loops looking up alias for struct " <> source
              | otherwise =
                  case Map.lookup name (getField @"structs" $ getField @"types" frac) of
                    Nothing         -> Left $ "No struct " <> name
                    Just realStruct ->
                      case realStruct of
                        StructAlias alias        -> loop source alias (n + 1)
                        Distillery.Struct fields -> do
                          fields' <- for fields $ \arg -> do
                                       t' <- retype frac $ getField @"type_" arg
                                       Right Mixer.Field
                                               { name    = getField @"name" arg
                                               , type_   = t'
                                               , comment = getField @"comment" arg
                                               }

                          Right $ Mixer.Struct
                                    { fields = fields'
                                    , tags   = mentionTag
                                    }

        in loop name0 name0 (0 :: Int)



mixUnions :: Fractions -> SortedMentions -> Either String (Map String Mixer.Union)
mixUnions frac sorted =
  case Map.lookup Mixer.UnionCat sorted of
    Nothing     -> Left "No mentions of unions?"
    Just unions ->
      flip Map.traverseWithKey unions $ \name0 mentionTag ->
        let loop source name n
              | n > 15    = Left $ "Ran out of loops looking up alias for union " <> source
              | otherwise =
                  case Map.lookup name (getField @"unions" $ getField @"types" frac) of
                    Nothing        -> Left $ "No union " <> name
                    Just realUnion ->
                      case realUnion of
                        UnionAlias alias        -> loop source alias (n + 1)
                        Distillery.Union fields -> do
                          fields' <- for fields $ \arg -> do
                                       t' <- retype frac $ getField @"type_" arg
                                       Right Mixer.Field
                                               { name    = getField @"name" arg
                                               , type_   = t'
                                               , comment = getField @"comment" arg
                                               }

                          Right Mixer.Union
                                        { fields = fields'
                                        , tags   = mentionTag
                                        }
        in loop name0 name0 (0 :: Int)



underscore :: Char -> Char
underscore '.' = '_'
underscore c   = c

getFlagName :: String -> Double -> Either String (Maybe String)
getFlagName "vulkan" 1.0 = Right Nothing
getFlagName "vulkan" api = Right . Just $ "CORE_" <> fmap underscore (showFFloat Nothing api "")
getFlagName api      ver =
  Left $ "No defined feature flag name for " <> api <> " v" <> show ver

mixCommands :: Fractions -> Mentions -> Either String (Map String Mixer.Command)
mixCommands frac mentions =
  flip Map.traverseWithKey (getField @"commands" mentions) $ \name0 mentionTag ->
    let loop source name n
          | n > 15    = Left $ "Ran out of loops looking up alias for command " <> source
          | otherwise =
              case Map.lookup name (getField @"commands" frac) of
                Nothing          -> Left $ "Cannot find command name " <> name
                Just command ->
                  case command of
                    CommandAlias alias          -> loop source alias (n + 1)
                    Distillery.Command args ret -> do
                      args' <- for args $ \arg -> do
                                 t' <- retype frac $ getField @"type_" arg
                                 Right Mixer.Argument
                                         { name  = getField @"name" arg
                                         , type_ = t'
                                         }

                      ret' <- retype frac ret

                      cmdtype <-
                        case Map.lookup "vulkan" $ getField @"features" mentionTag of
                          Nothing                 -> Right Extended
                          Just (FeatureTag ver _) -> Imported <$> getFlagName "vulkan" ver

                      Right $ Mixer.Command
                                      { arguments = args'
                                      , return    = ret'
                                      , type_     = cmdtype
                                      , tags      = mentionTag
                                      }
    in loop name0 name0 (0 :: Int)



requireFeatureType :: Fractions -> Map String Mixer.Enum -> String -> Double -> String -> Either String [Mixer.Require]
requireFeatureType frac enums api number name = do
  cat <- categorize frac name
  case cat of
    EnumCat ->
      case Map.lookup name enums of
        Nothing    -> Left name
        Just en ->
          Right $
            let applyRequire :: Mixer.Enumerator -> Mixer.Require
                applyRequire enum =
                  Mixer.RequireEnumerator
                    { extends = name
                    , name    = getField @"name" enum
                    }

                condition :: Map String FeatureTag -> Bool
                condition m =
                  case Map.lookup api m of
                    Nothing -> False
                    Just ft -> getField @"number" ft == number

            in (:) Mixer.RequireType
                     { name = name
                     , category = EnumCat
                     }
                 $ applyRequire <$>
                     filter (condition . getField @"features" . getField @"tags") (getField @"enums" en)

    Mixer.Handle ->
      case Map.lookup name . getField @"handles" $ getField @"types" frac of
        Nothing                   -> Left $ "No struct " <> name
        Just (HandleAlias alias)  -> Right [ RequireHandle
                                               { name = name
                                               , alias = Just alias
                                               }
                                           ]
        Just _                    -> Right [ RequireHandle
                                               { name = name
                                               , alias = Nothing
                                               }
                                           ]

    Mixer.StructCat ->
      case Map.lookup name . getField @"structs" $ getField @"types" frac of
        Nothing                   -> Left $ "No struct " <> name
        Just (StructAlias alias)  -> Right [ RequireStruct
                                               { name = name
                                               , alias = Just alias
                                               }
                                           ]
        Just Distillery.Struct {} -> Right [ RequireStruct
                                               { name = name
                                               , alias = Nothing
                                               }
                                           ]

    Mixer.UnionCat ->
      case Map.lookup name . getField @"unions" $ getField @"types" frac of
        Nothing                  -> Left $ "No struct " <> name
        Just (UnionAlias alias)  -> Right [ RequireUnion
                                              { name = name
                                              , alias = Just alias
                                              }
                                          ]
        Just Distillery.Union {} -> Right [ RequireUnion
                                              { name = name
                                              , alias = Nothing
                                              }
                                          ]

    _          -> Right $ pure Mixer.RequireType
                                 { name     = name
                                 , category = cat
                                 }

requireExtensionType :: String -> Fractions -> Map String Mixer.Enum -> String -> Either String [Mixer.Require]
requireExtensionType extname frac enums name = do
  cat <- categorize frac name
  case cat of
    EnumCat ->
      case Map.lookup name enums of
        Nothing -> Left $ "No enum " <> name
        Just en ->
          Right $
            let applyRequire :: Mixer.Enumerator -> Mixer.Require
                applyRequire enum =
                  Mixer.RequireEnumerator
                    { extends = name
                    , name    = getField @"name" enum
                    }

            in (:) Mixer.RequireType
                     { name     = name
                     , category = EnumCat
                     }
                 $ applyRequire <$>
                     filter (Map.member extname . getField @"extensions" . getField @"tags") (getField @"enums" en)

    Mixer.Handle ->
      case Map.lookup name . getField @"handles" $ getField @"types" frac of
        Nothing                   -> Left $ "No struct " <> name
        Just (HandleAlias alias)  -> Right [ RequireHandle
                                               { name = name
                                               , alias = Just alias
                                               }
                                           ]
        Just _                    -> Right [ RequireHandle
                                               { name = name
                                               , alias = Nothing
                                               }
                                           ]

    Mixer.StructCat ->
      case Map.lookup name . getField @"structs" $ getField @"types" frac of
        Nothing                   -> Left $ "No struct " <> name
        Just (StructAlias alias)  -> Right [ RequireStruct
                                               { name = name
                                               , alias = Just alias
                                               }
                                           ]
        Just Distillery.Struct {} -> Right [ RequireStruct
                                               { name = name
                                               , alias = Nothing
                                               }
                                           ]

    Mixer.UnionCat ->
      case Map.lookup name . getField @"unions" $ getField @"types" frac of
        Nothing                  -> Left $ "No struct " <> name
        Just (UnionAlias alias)  -> Right [ RequireUnion
                                              { name = name
                                              , alias = Just alias
                                              }
                                          ]
        Just Distillery.Union {} -> Right [ RequireUnion
                                              { name = name
                                              , alias = Nothing
                                              }
                                          ]

    _          -> Right $ pure Mixer.RequireType
                                 { name     = name
                                 , category = cat
                                 }



-- | As of Vulkan 1.3 there have been no removals, so this sidecase is not implemented.
mixFeatureBlock :: Fractions -> Map String Mixer.Enum -> String -> Double -> [Mixer.Block] -> Distillery.FeatureBlock -> Either String [Mixer.Block]
mixFeatureBlock _frac _enums _api _number _acc RemoveFeatureBlock {} =
  Left "The generator does not handle feature block removals"

mixFeatureBlock frac enums api number acc0 block@RequireFeatureBlock {} = do
  reqs <- foldlM mixRequire [] $ getField @"requires" block
  let new = Mixer.Block
              { comment  = getField @"comment" block
              , requires = reqs
              , tags     = mempty
              }
  Right $ acc0 <> [new]
  where
    mixRequire :: [Mixer.Require] -> Distillery.Require -> Either String [Mixer.Require]
    mixRequire acc req =
      case req of
        Distillery.RequireType name _ -> do
          req' <- requireFeatureType frac enums api number name
          Right $ acc <> req'

        Distillery.RequireEnum name _ ->
          Right $ acc <> [ Mixer.RequireType
                             { name     = name
                             , category = Mixer.Const
                             }
                         ]

        Distillery.RequireEnumerator {} ->
          Right $
            case getField @"extends_" req of
              Nothing  ->
                acc <> [ Mixer.RequireEnumeratorInplace
                           { name    = getField @"name" req
                           , value   = getField @"value" req
                           , alias   = Nothing
                           , comment = getField @"comment" req
                           }
                       ]
              Just ext ->
                acc <> [ Mixer.RequireEnumerator
                           { extends = ext
                           , name    = getField @"name" req
                           }
                       ]

        Distillery.RequireAlias {} ->
          case getField @"extends_" req of
            Nothing      ->
              Left $ "Alias " <> getField @"name" req <> " extends inside the feature"
            Just extends ->
              Right $ acc <> [ Mixer.RequireEnumerator
                                 { extends = extends
                                 , name    = getField @"name" req
                                 }
                             ]

        Distillery.RequireBit {} ->
          let val = Integral . setBit 0 . fromIntegral $ getField @"bitpos" req :: Value Integer
          in Right $
               case getField @"extends_" req of
                 Nothing  ->
                   acc <> [ Mixer.RequireEnumeratorInplace
                              { name    = getField @"name" req
                              , value   = val
                              , alias   = Nothing
                              , comment = getField @"comment" req
                              }
                          ]
                 Just ext ->
                   acc <> [ Mixer.RequireEnumerator
                              { extends = ext
                              , name    = getField @"name" req
                              }
                          ]

        Distillery.RequireOffset {} -> do
          Right $
            acc <> [ Mixer.RequireEnumerator
                       { extends = getField @"extends" req
                       , name    = getField @"name" req
                       }
                   ]

        Distillery.RequireCommand name _ -> do
          mayFlag <- getFlagName api number
          Right $ acc <> [ Mixer.RequireCommand
                             { name  = name
                             , type_ = Imported mayFlag
                             }
                         ]



mixFeatures :: Fractions -> Map String Mixer.Enum -> Either String [Mixer.Feature]
mixFeatures frac enums = foldlMWithKey compound [] (getField @"features" frac)
  where
    compound :: [Mixer.Feature] -> String -> [Distillery.Feature] -> Either String [Mixer.Feature]
    compound acc api feats = do
      (_, versions) <- foldlM (go api) ([], []) $ List.sortOn (getField @"number") feats
      Right $ versions <> acc

    go :: String -> ([Mixer.Block], [Mixer.Feature]) -> Distillery.Feature -> Either String ([Mixer.Block], [Mixer.Feature])
    go api (bs, acc) feat = do
      blocks <- foldlM (mixFeatureBlock frac enums api (getField @"number" feat)) bs $ getField @"blocks" feat
      let new = Mixer.Feature
                  { api     = api
                  , number  = getField @"number"  feat
                  , name    = getField @"name"    feat
                  , protect = getField @"protect" feat
                  , comment = getField @"comment" feat
                  , blocks  = blocks
                  }
      Right (blocks, acc <> [new])



featureFromFlag :: Fractions -> String -> Either String (String, FeatureTag)
featureFromFlag frac flag = do
  let opts = (\f -> Map.foldrWithKey f [] $ getField @"features" frac) $ \api feats acc ->
               (\f -> foldr f acc feats) $ \feat acc1 ->
                 if getField @"name" feat == flag
                   then (: acc1) ( api
                                 , FeatureTag
                                     { number = getField @"number" feat
                                     , name   = getField @"name"   feat
                                     }
                                 )
                   else acc1

  case opts of
    []    -> Left $ "No feature matches for " <> flag
    [opt] -> Right opt
    _     -> Left $ "Multiple feature matches for " <> flag



-- | As of Vulkan 1.3 there have been no removals, so this sidecase is not implemented.
mixExtensionBlock :: Fractions -> Mentions -> Map String Mixer.Enum -> Maybe Integer -> String -> [Mixer.Block] -> Distillery.ExtensionBlock -> Either String [Mixer.Block]
mixExtensionBlock _frac _ment _enums _extnumber _extname _acc RemoveExtensionBlock {} =
  Left "The generator does not handle feature block removals"

mixExtensionBlock frac ment enums _extnumber extname acc0 block@RequireExtensionBlock {} = do
  reqs <- foldlM mixRequire [] $ getField @"requires" block
  feats <- traverse (featureFromFlag frac) $ getField @"features" block
  let new = Mixer.Block
              { comment  = getField @"comment" block
              , requires = reqs
              , tags     = MentionTag
                             { features   = Map.fromList feats
                             , extensions =
                                 Map.fromList $
                                   getField @"extensions" block <&> \ext ->
                                     (ext, ExtensionTag Set.empty)
                             }
              }
          -- If extensions are required, but all of them are excluded, throw the block away
  Right $ acc0 <> [new]
  where
    mixRequire :: [Mixer.Require] -> Distillery.Require -> Either String [Mixer.Require]
    mixRequire acc req =
      case req of
        Distillery.RequireType name _ -> do
          req' <- requireExtensionType extname frac enums name
          Right $ acc <> req'

        Distillery.RequireEnum name _ ->
          Right $ acc <> [ Mixer.RequireType
                             { name     = name
                             , category = Mixer.Const
                             }
                         ]

        Distillery.RequireEnumerator {} ->
          Right $
            case getField @"extends_" req of
              Nothing  ->
                acc <> [ Mixer.RequireEnumeratorInplace
                           { name    = getField @"name" req
                           , value   = getField @"value" req
                           , alias   = Nothing
                           , comment = getField @"comment" req
                           }
                       ]
              Just ext ->
                acc <> [ Mixer.RequireEnumerator
                           { extends = ext
                           , name    = getField @"name" req
                           }
                       ]

        Distillery.RequireAlias {} ->
          case getField @"extends_" req of
            Nothing      ->
              case Map.lookup extname (getField @"enumerators" ment) of
                Nothing    -> Left $ "No enumerator mentions in extension " <> extname
                Just entry ->
                  case Map.lookup (getField @"alias" req) entry of
                    Nothing  -> Left $ "Cannot find alias to " <> getField @"name" req <> " in extension " <> extname
                    Just val ->
                      Right $ acc <> [ Mixer.RequireEnumeratorInplace
                                         { name    = getField @"name" req
                                         , value   = val
                                         , alias   = Just $ getField @"alias" req
                                         , comment = getField @"comment" req
                                         }
                                     ]
            Just extends ->
              Right $ acc <> [ Mixer.RequireEnumerator
                                 { extends = extends
                                 , name    = getField @"name" req
                                 }
                             ]

        Distillery.RequireBit {} ->
          let val = Integral . setBit 0 . fromIntegral $ getField @"bitpos" req
          in Right $
               case getField @"extends_" req of
                 Nothing  ->
                   acc <> [ Mixer.RequireEnumeratorInplace
                              { name    = getField @"name" req
                              , value   = val
                              , alias   = Nothing
                              , comment = getField @"comment" req
                              }
                          ]
                 Just ext ->
                   acc <> [ Mixer.RequireEnumerator
                              { extends = ext
                              , name    = getField @"name" req
                              }
                          ]

        Distillery.RequireOffset {} -> do
          Right $
            acc <> [ Mixer.RequireEnumerator
                       { extends = getField @"extends" req
                       , name    = getField @"name" req
                       }
                   ]

        Distillery.RequireCommand name _ ->
          Right $ acc <> [ Mixer.RequireCommand
                             { name  = name
                             , type_ = Extended
                             }
                         ]



mixExtensions :: Fractions -> Mentions -> Map String Mixer.Enum -> Either String (Map String Mixer.Extension)
mixExtensions frac ment enums =
  foldlM go Map.empty (List.sortOn (getField @"number" . snd) . Map.toList $ getField @"extensions" frac)
  where
    go :: (Map String Mixer.Extension) -> (String, Distillery.Extension) -> Either String (Map String Mixer.Extension)
    go acc (name, ext) =
      if any (== "disabled") (getField @"supported" ext)
        then Right acc
        else do
          blocks' <- foldlM (mixExtensionBlock frac ment enums (getField @"number" ext) name) [] $ getField @"blocks" ext
          let new = Mixer.Extension
                      { number       = getField @"number" ext
                      , protect      = getField @"protect" ext
                      , platform     = getField @"platform" ext
                      , author       = getField @"author" ext
                      , contact      = getField @"contact" ext
                      , type_        = getField @"type_" ext
                      , requires     = getField @"requires" ext
                      , requiresCore = getField @"requiresCore" ext
                      , supported    = getField @"supported" ext
                      , promotedto   = getField @"promotedto" ext
                      , deprecatedby = getField @"deprecatedby" ext
                      , obsoletedby  = getField @"obsoletedby" ext
                      , provisional  = getField @"provisional" ext
                      , specialuse   = getField @"specialuse" ext
                      , blocks       = blocks'
                      }
          Right $ Map.insert name new acc



compartNames :: MentionTag -> [Cabal.Class]
compartNames tag =
  let defeat name (FeatureTag num _) = (:) $ Feat name num
      feats = Map.foldrWithKey defeat [] (getField @"features" tag)
      exts = Ext <$> Map.keys (getField @"extensions" tag)
  in feats <> exts



compartMentions :: Fractions -> Mentions -> SortedMentions -> Map Class (Set (Category, String))
compartMentions frac ment sorted =
  let featnames = Map.foldrWithKey (\f -> flip $ foldr (goFeat f)) [] $ getField @"features" frac
      extnames = fmap Ext . Map.keys $ Map.filter (not . any (== "disabled") . getField @"supported") (getField @"extensions" frac)
      base = foldr (\c -> Map.insert c Set.empty) Map.empty $ featnames <> extnames

      enumed = Map.foldrWithKey (\e -> flip $ foldr (goEnum e)) base $ getField @"enums" ment
      typed = Map.foldrWithKey (\cat -> flip $ Map.foldrWithKey (goType cat)) enumed sorted
  in Map.foldrWithKey goCommand typed $ getField @"commands" ment
  where
    goFeat :: String -> Distillery.Feature -> [Class] -> [Class]
    goFeat name feat = (:) $ Feat name (getField @"number" feat)

    goEnum :: String -> MentionEnum -> Map Class (Set (Category, String)) -> Map Class (Set (Category, String))
    goEnum en me acc = do
      foldr (\c -> Map.insertWith (<>) c $ Set.singleton (EnumCat, en)) acc .
        compartNames $ getField @"tag" me

    goType :: Category -> String -> MentionTag -> Map Class (Set (Category, String)) -> Map Class (Set (Category, String))
    goType cat type_ tag acc =
      foldr (\c -> Map.insertWith (<>) c $ Set.singleton (cat, type_)) acc $
        compartNames tag

    goCommand :: String -> MentionTag -> Map Class (Set (Category, String)) -> Map Class (Set (Category, String))
    goCommand s tag acc =
      foldr (\c -> Map.insertWith (<>) c $ Set.singleton (Function, s)) acc $
        compartNames tag



digModuleLists :: Mixed -> Map Class (Set (Category, String)) -> Either String (Map Class (Set (Category, String)))
digModuleLists mixed = traverse $ shuffle Set.empty
  where
    shuffle :: Set (Category, String) -> Set (Category, String) -> Either String (Set (Category, String))
    shuffle acc s = do
      s' <- foldlM go Set.empty s
      let total = acc <> s
          delta = Set.difference s' total
      if Set.null delta
        then Right $ total <> s'
        else shuffle total s'

    detype :: Mixer.Type -> Set (Category, String) -> Set (Category, String)
    detype (Mixer.VkType c s) = Set.insert (c, s)
    detype (Type1 _ s)        = detype s
    detype _                  = id

    go :: Set (Category, String) -> (Category, String) -> Either String (Set (Category, String))
    go acc (c, s) =
      case c of
        FuncPointerCat ->
          case Map.lookup s $ getField @"funcpointers" mixed of
            Nothing                               -> Left $ "No funcpointer " <> show s
            Just Mixer.VoidPointer                -> Right acc
            Just funcpointer@Mixer.FuncPointer {} ->
              Right . detype (getField @"return" funcpointer)
                    . foldr (detype . getField @"type_") acc $ getField @"fields" funcpointer
        StructCat ->
          case Map.lookup s $ getField @"structs" mixed of
            Nothing     -> Left $ "No struct " <> show s
            Just struct -> Right . foldr (detype . getField @"type_") acc $ getField @"fields" struct

        UnionCat ->
          case Map.lookup s $ getField @"unions" mixed of
            Nothing     -> Left $ "No union " <> show s
            Just struct -> Right . foldr (detype . getField @"type_") acc $ getField @"fields" struct

        Function ->
          case Map.lookup s $ getField @"commands" mixed of
            Nothing      -> Left $ "No command " <> show s
            Just command -> Right . detype (getField @"return" command)
                                            . foldr (detype . getField @"type_") acc $ getField @"arguments" command


        _ -> Right acc



compartPlatforms :: Fractions -> [Cabal.Platform]
compartPlatforms frac =
  let f name (Distillery.Platform macro comment) = Cabal.Platform name macro comment
  in Map.foldrWithKey (\k v -> (:) (f k v)) [] $ getField @"platforms" frac



mix :: Fractions -> Either String (Mixed, [Cabal.Platform], Map Class (Set (Category, String)))
mix fractions = do
  mentions0 <- premixFeatures fractions emptyMentions
  mentions <- premixExtensions fractions mentions0
  sorted <- sortTypeMentions fractions mentions
  enums <- mixEnums fractions mentions sorted
  mixed <- Mixed
             <$> pure (getField @"platforms" fractions)
             <*> mixProtects fractions sorted
             <*> pure (Map.keysSet . getField @"defines" $ getField @"types" fractions)
             <*> mixBases fractions sorted
             <*> mixConstants fractions
             <*> pure enums
             <*> mixFuncPointers fractions sorted
             <*> mixHandles fractions sorted
             <*> mixStructs fractions sorted
             <*> mixUnions fractions sorted
             <*> mixCommands fractions mentions
             <*> mixFeatures fractions enums
             <*> mixExtensions fractions mentions enums
  dug <- digModuleLists mixed (compartMentions fractions mentions sorted)
  Right (mixed, compartPlatforms fractions, dug)
