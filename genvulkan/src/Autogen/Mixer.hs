{-# LANGUAGE DataKinds
           , DisambiguateRecordFields
           , DuplicateRecordFields
           , NoFieldSelectors
           , RecordWildCards
           , TypeApplications #-}

module Autogen.Mixer
  ( Category (..)
  , Augments (..)
  , SortedDependencies
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
import           Data.Maybe
import           Data.Set (Set)
import qualified Data.Set as Set
import           Data.Traversable
import           GHC.Records



addFeature :: String -> FeatureTag -> MentionTag -> MentionTag
addFeature api tag (MentionTag feats exts) =
  MentionTag (Map.insertWith min api tag feats) exts

addExtension :: String -> ExtensionTag -> MentionTag -> MentionTag
addExtension ext reqs (MentionTag feats exts) =
  MentionTag feats $ Map.insertWith (<>) ext reqs exts
{-
deriveFlags :: MentionTag -> Maybe String
deriveFlags (MentionTag feats exts) =
  let brfeats
        | Map.null feats                                     = Right []
        | Just (FeatureTag 1 _) <- Map.lookup "vulkan" feats = Left ()
        | otherwise = Right $ getField @"name" <$> Map.elems feats

      brexts = Map.toList exts <&> \(name, ExtensionTag ext) ->
                 if Set.null ext
                   then name
                   else name <> " && " <> List.intercalate " && " (Set.toList ext)

  in case (brfeats, brexts) of
       (Left ()  , _     ) -> Nothing
       (Right [] , []    ) -> Nothing
       (Right [] , [xt0] ) -> Just xt0
       (Right [] , xts   ) -> Just $ "(" <> List.intercalate ") || (" xts <> ")"
       (Right fts, []    ) -> Just $ List.intercalate " || " fts
       (Right fts, xts   ) ->
         Just $ List.intercalate " || " fts <> " || (" <> List.intercalate ") || (" xts <> ")"
-}


fromMentionEnum :: SortedMentions -> MentionEnum -> Either String Mixer.Enumerator
fromMentionEnum _sorted enum = do
  Right Mixer.Enumerator
          { comment = getField @"comment" enum
          , name    = getField @"name" enum
          , flavor  = getField @"value" enum
          , tags    = getField @"tag" enum
          }



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
                  then [Mixer.Enumerated]
                  else []

              , guarding Mixer.FunPointer . getField @"funcpointers" $ getField @"types" frac
              , guarding Mixer.Handle . getField @"handles" $ getField @"types" frac
              , guarding Mixer.Struct . getField @"structs" $ getField @"types" frac
              , guarding Mixer.Union . getField @"unions" $ getField @"types" frac
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

bitToEnum :: MentionTag -> Distillery.Bit -> Mixer.Enumerator
bitToEnum tag bite =
  Mixer.Enumerator
    { comment    = getField @"comment" bite
    , name       = getField @"name"    bite
    , flavor     =
        case bite of
          Bit {}           -> Normal . Integral . setBit 0 . fromIntegral $ getField @"bitpos" bite
          BitEnumerator {} -> Normal $ getField @"value" bite
          BitAlias {}      -> Alias $ getField @"alias" bite
    , tags       = tag
    }

enumToEnum :: MentionTag -> Distillery.Enumerator -> Mixer.Enumerator
enumToEnum tag enum =
  Mixer.Enumerator
    { comment   = getField @"comment" enum
    , name      = getField @"name"    enum
    , flavor    =
        case enum of
          Distillery.Enumerator {} -> Normal $ getField @"value" enum
          EnumeratorAlias {}       -> Alias $ getField @"alias" enum
    , tags      = tag
    }



mixEnums :: Fractions -> Mentions -> SortedMentions -> Either String (Map String Mixer.Enum)
mixEnums frac mentions sorted =
  let mixTypeMentions =
        case Map.lookup Enumerated sorted of
          Nothing    -> Right Map.empty
          Just enums ->
            flip Map.traverseWithKey enums $ \enum tag ->
              case Map.lookup enum (getField @"bitmasks" $ getField @"types" frac) of
                Nothing                  ->
                  case Map.lookup enum (getField @"enums" $ getField @"types" frac) of
                    Nothing -> Left $ "Unknown enum " <> enum

                    Just (EnumStubAlias alias) ->
                      Right Mixer.Enum
                              { comment = Nothing
                              , type_   = Mixer.Int
                              , flavor  = Alias alias
                              , tags    = tag
                              }

                    Just EnumStub ->
                      case Map.lookup enum (getField @"bitmasks" frac) of
                        Nothing ->
                          case Map.lookup enum (getField @"enums" frac) of
                            Nothing ->
                              Right Mixer.Enum
                                      { comment   = Nothing
                                      , type_     = Mixer.Int
                                      , flavor    = Normal []
                                      , tags      = tag
                                      }

                            Just realEnum ->
                              Right Mixer.Enum
                                      { comment = getField @"comment" realEnum
                                      , type_   = Mixer.Int
                                      , flavor  = Normal $ enumToEnum tag <$> getField @"enums" realEnum
                                      , tags    = tag
                                      }

                        Just realBitmask ->
                          Right Mixer.Enum
                                  { comment = getField @"comment" realBitmask
                                  , type_   = Mixer.Int
                                  , flavor  = Normal $ bitToEnum tag <$> getField @"bits" realBitmask
                                  , tags    = tag
                                  }

                Just (BitmaskStubAlias alias) ->
                  case Map.lookup alias (getField @"bitmasks" $ getField @"types" frac) of
                    Nothing                  -> Left $ "Could not find bitmask alias " <> alias
                    Just BitmaskStubAlias {} ->
                      Left $ "Bitmask alias " <> alias <> " refers to a different alias"

                    Just (BitmaskStub stubtype) -> do
                      type_ <- mkVkType frac stubtype
                      Right Mixer.Enum
                              { comment = Nothing
                              , type_   = Custom type_
                              , flavor  = Alias alias
                              , tags    = tag
                              }

                Just (BitmaskStub stubtype) -> do
                  type_ <- mkVkType frac stubtype
                  case Map.lookup enum (getField @"bitmasks" frac) of
                    Nothing ->
                      Right Mixer.Enum
                              { comment   = Nothing
                              , type_     = Custom type_
                              , flavor    = Normal []
                              , tags      = tag
                              }

                    Just realBitmask ->
                      Right Mixer.Enum
                              { comment = getField @"comment" realBitmask
                              , type_   = Custom type_
                              , flavor  = Normal $ bitToEnum tag <$> getField @"bits" realBitmask
                              , tags    = tag
                              }

      mixEnumMentions :: Map String Mixer.Enum -> Either String (Map String Mixer.Enum)
      mixEnumMentions top =
        (\f -> foldlMWithKey f top (getField @"enums" mentions)) $ \acc enum ment -> do
          dement <- traverse (fromMentionEnum sorted) ment
          (\f -> Map.alterF f enum acc) $ \mayVal ->
            case mayVal of
              Just Mixer.Enum {..} ->
                case flavor of
                  Alias _      -> Left $ "Extended enum " <> enum <> " is an alias"
                  Normal parts ->
                    Right $ Just Mixer.Enum
                                   { comment = comment
                                   , type_   = type_
                                   , flavor  = Normal $ parts <> dement
                                   , tags    = tags
                                   }

              Nothing ->
                case Map.lookup enum (getField @"bitmasks" $ getField @"types" frac) of
                  Nothing                  ->
                    case Map.lookup enum (getField @"enums" $ getField @"types" frac) of
                      Nothing -> Left $ "Unknown enum " <> enum

                      Just EnumStubAlias {} ->
                        Left $ "Top-level " <> enum <> " enum mention resolves to an alias"

                      Just EnumStub {} ->
                        case Map.lookup enum (getField @"bitmasks" frac) of
                          Nothing ->
                            case Map.lookup enum (getField @"enums" frac) of
                              Nothing ->
                                Right $ Just Mixer.Enum
                                               { comment   = Nothing
                                               , type_     = Mixer.Int
                                               , flavor    = Normal dement
                                               , tags      = mempty
                                               }

                              Just realEnum ->
                                Right $ Just Mixer.Enum
                                               { comment = getField @"comment" realEnum
                                               , type_   = Mixer.Int
                                               , flavor  =
                                                   Normal $ (enumToEnum mempty <$> getField @"enums" realEnum) <> dement
                                               , tags    = mempty
                                               }

                          Just realBitmask ->
                            Right $ Just Mixer.Enum
                                           { comment = getField @"comment" realBitmask
                                           , type_   = Mixer.Int
                                           , flavor  =
                                               Normal $ (bitToEnum mempty <$> getField @"bits" realBitmask) <> dement
                                           , tags    = mempty
                                           }
                  Just BitmaskStubAlias {} ->
                    Left $ "Top-level " <> enum <> " enum mention resolves to an alias"

                  Just (BitmaskStub stubtype) -> do
                    type_ <- mkVkType frac stubtype
                    case Map.lookup enum (getField @"bitmasks" frac) of
                      Nothing ->
                        Right $ Just Mixer.Enum
                                       { comment   = Nothing
                                       , type_     = Custom type_
                                       , flavor    = Normal dement
                                       , tags      = mempty
                                       }

                      Just realBitmask ->
                        Right $ Just Mixer.Enum
                                       { comment = getField @"comment" realBitmask
                                       , type_   = Custom type_
                                       , flavor  =
                                           Normal $ (bitToEnum mempty <$> getField @"bits" realBitmask) <> dement
                                       , tags    = mempty
                                       }

  in do
    top <- mixTypeMentions
    mixEnumMentions top



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
                , alias   = Nothing
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
                    , alias   = Just $ getField @"alias" constant
                    , comment = getField @"comment" constant
                    }



mixFuncPointers :: Fractions -> SortedMentions -> Either String (Map String Mixer.FuncPointer)
mixFuncPointers frac sorted =
  case Map.lookup Mixer.FunPointer sorted of
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
      flip Map.traverseWithKey handles $ \name _mentionTag ->
        case Map.lookup name (getField @"handles" $ getField @"types" frac) of
          Nothing         -> Left $ "No handle " <> name
          Just realHandle ->
            Right $
              case realHandle of
                Distillery.Handle                -> Normal Mixer.DispatchableHandle
                Distillery.NonDispatchableHandle -> Normal Mixer.NonDispatchableHandle
                Distillery.HandleAlias alias     -> Alias alias



mixStructs :: Fractions -> SortedMentions -> Either String (Map String Mixer.Struct)
mixStructs frac sorted =
  case Map.lookup Mixer.Struct sorted of
    Nothing     -> Left "No mentions of structs?"
    Just unions ->
      (\f -> foldlMWithKey f Map.empty unions) $ \acc name mentionTag -> do
        case Map.lookup name (getField @"structs" $ getField @"types" frac) of
          Nothing         -> Left $ "No struct " <> name
          Just realStruct ->
            case realStruct of
              StructAlias alias        -> Right $ Map.insert name (Alias alias) acc
              Distillery.Struct fields -> do
                fields' <- for fields $ \arg -> do
                             t' <- retype frac $ getField @"type_" arg
                             Right Mixer.Field
                                     { name    = getField @"name" arg
                                     , type_   = t'
                                     , comment = getField @"comment" arg
                                     }

                Right . (\r -> Map.insert name r acc) $
                          Normal RealStruct
                                 { fields = fields'
                                 , tags   = mentionTag
                                 }

mixUnions :: Fractions -> SortedMentions -> Either String (Map String Mixer.Union)
mixUnions frac sorted =
  case Map.lookup Mixer.Union sorted of
    Nothing     -> Left "No mentions of unions?"
    Just unions ->
      flip Map.traverseWithKey unions $ \name mentionTag -> do
        case Map.lookup name (getField @"unions" $ getField @"types" frac) of
          Nothing        -> Left $ "No union " <> name
          Just realUnion ->
            case realUnion of
              UnionAlias alias        -> Right $ Alias alias
              Distillery.Union fields -> do
                fields' <- for fields $ \arg -> do
                             t' <- retype frac $ getField @"type_" arg
                             Right Mixer.Field
                                     { name    = getField @"name" arg
                                     , type_   = t'
                                     , comment = getField @"comment" arg
                                     }

                Right $ Normal RealUnion
                                 { fields = fields'
                                 , tags   = mentionTag
                                 }



getFlagName :: String -> Double -> Either String (Maybe String)
getFlagName "vulkan" 1.0 = Right Nothing
getFlagName "vulkan" 1.1 = Right $ Just "CORE_1_1"
getFlagName "vulkan" 1.2 = Right $ Just "CORE_1_2"
getFlagName "vulkan" 1.3 = Right $ Just "CORE_1_3"
getFlagName api      ver =
  Left $ "No defined feature flag name for " <> api <> " v" <> show ver

mixCommands :: Fractions -> Mentions -> Either String (Map String Mixer.Command)
mixCommands frac mentions =
  flip Map.traverseWithKey (getField @"commands" mentions) $ \name mentionTag -> do
    case Map.lookup name (getField @"commands" frac) of
      Nothing          -> Left $ "No command " <> name
      Just realCommand ->
        case realCommand of
          CommandAlias alias          ->
            case Map.lookup alias (getField @"commands" frac) of
              Nothing -> Left $ "Cannot find alias for command " <> name
              Just CommandAlias {} ->
                Left $ "Command alias " <> name <> " links to an alias"

              Just (Distillery.Command args ret) -> do
                args' <- for args $ \arg -> do
                          t' <- retype frac $ getField @"type_" arg
                          Right Mixer.Argument
                                  { name  = getField @"name" arg
                                  , type_ = t'
                                  }

                ret' <- retype frac ret

                Right $ Mixer.Command
                          { arguments = args'
                          , return    = ret'
                          , type_     = Alias alias
                          , tags      = mentionTag
                          }

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
                            , type_     = Normal cmdtype
                            , tags      = mentionTag
                            }



requireFeatureType :: Fractions -> Map String Mixer.Enum -> String -> Double -> String -> Either String [Mixer.Require]
requireFeatureType frac enums api number name = do
  cat <- categorize frac name
  case cat of
    Enumerated ->
      case getField @"flavor" <$> Map.lookup name enums of
        Nothing             -> Left name
        Just (Alias _alias) -> Left $ "Feature requires an enumerator alias for  " <> name
        Just (Normal ens)   ->
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
                     , category = Enumerated
                     }
                 $ applyRequire <$>
                     filter (condition . getField @"features" . getField @"tags") ens

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

    Mixer.Struct ->
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

    Mixer.Union ->
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
    Enumerated ->
      case getField @"flavor" <$> Map.lookup name enums of
        Nothing            -> Left name
        Just (Alias _)     -> Right . pure $ Mixer.RequireType
                                               { name     = name
                                               , category = Enumerated
                                               }
        Just (Normal ens)  ->
          Right $
            let applyRequire :: Mixer.Enumerator -> Mixer.Require
                applyRequire enum =
                  Mixer.RequireEnumerator
                    { extends = name
                    , name    = getField @"name" enum
                    }

            in (:) Mixer.RequireType
                     { name = name
                     , category = Enumerated
                     }
                 $ applyRequire <$>
                     filter (Map.member extname . getField @"extensions" . getField @"tags") ens

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

    Mixer.Struct ->
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

    Mixer.Union ->
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



type SortedDependencies = Map (Maybe Cabal.Extension) (Set (Category, String))

sortDependencies :: Fractions -> SortedMentions -> Either String SortedDependencies
sortDependencies frac sorted =
  (\f -> foldlMWithKey f Map.empty sorted) $ \acc0 cat mentions ->
    (\f -> foldlMWithKey f acc0 mentions) $ \acc1 name tag -> do
      let nodep = Map.insertWith (\_ -> Set.insert (cat, name)) Nothing (Set.singleton (cat, name)) acc1
      if elem cat [Enumerated, Mixer.Struct, Mixer.Union, Function]
           && Map.null (getField @"features" tag)
        then do
          deps <-
            (\f -> foldlM f Set.empty . Map.keys $ getField @"extensions" tag) $ \acc2 extname ->
              case Map.lookup extname $ getField @"extensions" frac of
                Nothing  -> Left $ "No extension " <> extname
                Just ext ->
                  if any (== "disabled") $ getField @"supported" ext
                    then Right acc2
                    else
                      case getField @"platform" ext of
                        Nothing   -> Right $ Set.insert Nothing acc2
                        Just plat ->
                          case Map.lookup plat $ getField @"platforms" frac of
                            Nothing       -> Left $ "No platform " <> plat
                            Just platform ->
                              Right $ Set.insert (Just $ Cabal.Extension plat $ getField @"protect" platform) acc2

          if Set.member Nothing deps
            then Right nodep
            else
              case catMaybes $ Set.toList deps of
                []  -> Right nodep
                [d] -> Right $ Map.insertWith (\_ -> Set.insert (cat, name)) (Just d) (Set.singleton (cat, name)) acc1
                ds  -> Left $ show cat <> " " <> name <> " depends on multiple extensions: " <> show ds
        else Right nodep



mix :: Fractions -> Either String (Mixed, SortedDependencies)
mix fractions = do
  mentions0 <- premixFeatures fractions emptyMentions
  mentions <- premixExtensions fractions mentions0
  sorted <- sortTypeMentions fractions mentions
  deps <- sortDependencies fractions sorted
  enums <- mixEnums fractions mentions sorted
  (,) <$> do Mixed
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
      <*> pure deps
