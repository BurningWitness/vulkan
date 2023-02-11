{-# LANGUAGE DataKinds
           , DisambiguateRecordFields
           , DuplicateRecordFields
           , NoFieldSelectors
           , RecordWildCards
           , ScopedTypeVariables
           , TypeApplications #-}

module Autogen.Packager where

import           Autogen.Cabal.Types as Cabal
import           Autogen.Mixer.Types as Mixer
import           Autogen.Packager.Types as Packager

import           Data.Char
import           Data.Foldable
import           Data.Functor
import qualified Data.List as List
import           Data.List.NonEmpty (NonEmpty (..))
import qualified Data.List.NonEmpty as NonEmpty
import           Data.Map (Map)
import qualified Data.Map as Map
import           Data.Maybe
import           Data.Semigroup hiding (Arg, First)
import           Data.Set (Set)
import qualified Data.Set as Set
import           GHC.Records
import           Prelude hiding (Enum)
import           System.FilePath
import           System.Directory

import           Autogen.Mixer



newtype Dependencies = Dependencies (Map Category (Set String))
                       deriving Show

instance Semigroup Dependencies where
  Dependencies a <> Dependencies b = Dependencies $ Map.unionWith (Set.union) a b

instance Monoid Dependencies where
  mempty = Dependencies Map.empty

dependencies :: Mixer.Type -> Dependencies
dependencies (VkType cat a) = Dependencies $ Map.singleton cat (Set.singleton a)
dependencies (Type1 _ t)    = dependencies t
dependencies _              = mempty

purgeCategory :: Category -> Dependencies -> Dependencies
purgeCategory cat (Dependencies deps) = Dependencies $ Map.delete cat deps

capitalize :: String -> String
capitalize "_screen_context"  = "ScreenContext"
capitalize "_screen_window"   = "ScreenWindow"
capitalize "wl_display"       = "WlDisplay"
capitalize "wl_surface"       = "WlSurface"
capitalize "xcb_connection_t" = "XcbConnectionT"
capitalize "xcb_visualid_t"   = "XcbVisualidT"
capitalize "xcb_window_t"     = "XcbWindowT"
capitalize "zx_handle_t"      = "ZxHandleT"
capitalize str                = str

censor :: String -> Maybe String
censor "data"   = Just "data_"
censor "type"   = Just "type_"
censor "class"  = Just "class_"
censor "module" = Just "module_"
censor    []    = Nothing
censor (a:as) | isUpper a = Just $ toLower a : as
              | otherwise = Nothing

shapeType :: Mixer.Type -> String
shapeType (BareType a)                    = a
shapeType (HscType a)                     = "#{type " <> a <> "}"
shapeType (VkType FunPointer a)           = "FunPtr " <> a
shapeType (VkType _ a)                    = capitalize a
shapeType (Type1 a (BareType b))          = a <> " " <> b
shapeType (Type1 a (HscType b))           = a <> " #{type " <> b <> "}"
shapeType (Type1 a (VkType FunPointer b)) = a <> " (FunPtr " <> capitalize b <> ")"
shapeType (Type1 a (VkType _ b))          = a <> " " <> capitalize b
shapeType (Type1 a b)                     = a <> " (" <> shapeType b <> ")"

deriveEnumType :: String -> Mixer.Type -> String
deriveEnumType name (HscType _) = "#{type enum " <> name <> "}"
deriveEnumType _    type_       = shapeType type_

deriveType :: String -> Mixer.Type -> String
deriveType name (HscType _) = "#{type " <> name <> "}"
deriveType _    type_       = shapeType type_

deriveConstType :: Mixer.Value a -> String
deriveConstType (Integral _)   = "(Eq a, Num a) => a"
deriveConstType (Fractional _) = "(Eq a, Fractional a) => a"
deriveConstType (String _)     = "CString"

deriveConstValue :: String -> Mixer.Value () -> String
deriveConstValue name (Integral ())  = "#{const " <> name <> "}"
deriveConstValue _    (Fractional f) = show f
deriveConstValue name (String _)     = "#{const_str " <> name <> "}"

constValue :: Mixer.Value Integer -> Either String String
constValue (Integral i)   = Right $ show i
constValue (Fractional f) = Right $ show f
constValue (String s)     = Left s



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



protectName :: Name
protectName = Name $ "Vulkan" :| ["Types", "Protected"]

defineName :: Name
defineName = Name $ "Vulkan" :| ["Types", "Define"]

baseName :: Name
baseName = Name $ "Vulkan" :| ["Types", "Base"]

enumName :: String -> Name
enumName str = Name $ "Vulkan" :| ["Types", "Enum", str]

funcPointerName :: Name
funcPointerName = Name $ "Vulkan" :| ["Types", "FuncPointer"]

handleName :: Name
handleName = Name $ "Vulkan" :| ["Types", "Handle"]

structName :: String -> Name
structName str = Name $ "Vulkan" :| ["Types", "Struct", str]

unionName :: String -> Name
unionName str = Name $ "Vulkan" :| ["Types", "Union", str]

constantName :: Name
constantName = Name $ "Vulkan" :| ["Types", "Constant"]

commandName :: String -> Name
commandName str = Name $ "Vulkan" :| ["Types", "Command", toCap str]

featureName :: String -> Double -> Either String Name
featureName api number =
  let underscore '.' = '_'
      underscore c   = c

  in case api of
       "vulkan" -> Right . Name $ "Vulkan" :| ["Core_" <> fmap underscore (show number)]
       _        -> Left $ "Unaccounted api name " <> api

extensionName :: String -> Name
extensionName str = Name $ "Vulkan" :| ["Ext", str]



filepath :: FilePath -> Name -> FilePath
filepath path (Name ns) = foldl' (</>) path ns

moduleDir :: FilePath -> Name -> FilePath
moduleDir path (Name ns) = foldl' (</>) path $ NonEmpty.init ns

modulePath :: FilePath -> Module -> FilePath
modulePath path mdl =
  let Name name = getField @"name" mdl
  in moduleDir path (Name name) </> NonEmpty.last name <.> case getField @"ext" mdl of
                                                             Hsc -> "hsc"
                                                             Hs  -> "hs"

moduleName :: Name -> String
moduleName (Name ns) = List.intercalate "." $ NonEmpty.toList ns

toImport :: Name -> Import
toImport = Import . moduleName



vulkan_h :: Include
vulkan_h = Packager.Include "vulkan/vulkan.h"



depToImports :: Dependencies -> [Import]
depToImports (Dependencies dep) =
  let fuse Mixer.Include _   = []
      fuse Protected _       = [toImport protectName]
      fuse Define _          = [toImport defineName]
      fuse Basic _           = [toImport baseName]
      fuse Const _           = [toImport constantName]
      fuse Enumerated strs   = toImport . enumName <$> Set.toAscList strs
      fuse FunPointer _      = [toImport funcPointerName]
      fuse Handle _          = [toImport handleName]
      fuse Mixer.Struct strs = toImport . structName <$> Set.toAscList strs
      fuse Mixer.Union strs  = toImport . unionName <$> Set.toAscList strs
      fuse Function strs     = toImport . commandName <$> Set.toAscList strs

  in Map.foldrWithKey (\k v -> mappend $ fuse k v) [] dep



foldlMWithKey :: Monad m => (b -> k -> a -> m b) -> b -> Map k a -> m b
foldlMWithKey f = flip $ Map.foldrWithKey (\x y k z -> f z x y >>= k) pure

lookupProtect :: Mixed -> String -> Either String Flags
lookupProtect mixed name =
  case Map.lookup name $ getField @"platforms" mixed of
    Nothing        -> Left $ "No platform " <> name
    Just platform  -> Right . Flags FlagHsc $ getField @"protect" platform

packageProtects :: Mixed -> Either String Module
packageProtects mixed = do
  xlib     <- Just <$> lookupProtect mixed "xlib"
  xrandr   <- Just <$> lookupProtect mixed "xlib_xrandr"
  wayland  <- Just <$> lookupProtect mixed "wayland"
  xcb      <- Just <$> lookupProtect mixed "xcb"
  windows  <- Just <$> lookupProtect mixed "win32"
  directfb <- Just <$> lookupProtect mixed "directfb"
  fuchsia  <- Just <$> lookupProtect mixed "fuchsia"
  ggp      <- Just <$> lookupProtect mixed "ggp"
  screen   <- Just <$> lookupProtect mixed "screen"

  decls <-
    (\f -> foldlMWithKey f [] (getField @"protects" mixed)) $ \acc name protect -> do
      let datatype a  = EmptyDatatype a (Just a) Nothing
          synonym a b = TypeSynonym a (Arg b Nothing :| []) Nothing
          cap         = capitalize name

      (<> acc) <$>
        case protect of
          NoProtect
            | "int" == name -> Right []

          Mixer.Protect "vk_platform"
            | "void"     == name -> Right []
            | "char"     == name -> Right []
            | "float"    == name -> Right []
            | "double"   == name -> Right []
            | "int8_t"   == name -> Right []
            | "uint8_t"  == name -> Right []
            | "int16_t"  == name -> Right []
            | "uint16_t" == name -> Right []
            | "uint32_t" == name -> Right []
            | "uint64_t" == name -> Right []
            | "int32_t"  == name -> Right []
            | "int64_t"  == name -> Right []
            | "size_t"   == name -> Right []

          Mixer.Protect "X11/Xlib.h"
            | "Display"  == name -> Right [synonym name "Ptr ()" xlib]
            | "VisualID" == name -> Right [synonym name "Word64" xlib]
            | "Window"   == name -> Right [synonym name "Word64" xlib]

          Mixer.Protect "X11/extensions/Xrandr.h"
            | "RROutput" == name -> Right [synonym name "Word64" xrandr]

          Mixer.Protect "wayland-client.h"
            | "wl_display" == name -> Right [datatype cap wayland]
            | "wl_surface" == name -> Right [datatype cap wayland]

          Mixer.Protect "windows.h"
            | "HINSTANCE"           == name -> Right [synonym  name "Ptr ()"     windows]
            | "HWND"                == name -> Right [synonym  name "Ptr ()"     windows]
            | "HMONITOR"            == name -> Right [datatype name              windows]
            | "HANDLE"              == name -> Right [synonym  name "Ptr ()"     windows]
            | "SECURITY_ATTRIBUTES" == name -> Right [datatype name              windows]
            | "DWORD"               == name -> Right [synonym  name "Word32"     windows]
            | "LPCWSTR"             == name -> Right [synonym  name "Ptr CWchar" windows]

          Mixer.Protect "xcb/xcb.h"
            | "xcb_connection_t" == name -> Right [datatype cap          xcb]
            | "xcb_visualid_t"   == name -> Right [synonym  cap "CULong" xcb]
            | "xcb_window_t"     == name -> Right [synonym  cap "CULong" xcb]

          Mixer.Protect "directfb.h"
            | "IDirectFB"        == name -> Right [datatype name directfb]
            | "IDirectFBSurface" == name -> Right [datatype name directfb]

          Mixer.Protect "zircon/types.h"
            | "zx_handle_t" == name -> Right [datatype cap fuchsia]

          Mixer.Protect "ggp_c/vulkan_types.h"
            | "GgpStreamDescriptor" == name -> Right [datatype name ggp]
            | "GgpFrameToken"       == name -> Right [datatype name ggp]

          Mixer.Protect "screen/screen.h"
            | "_screen_context" == name -> Right [datatype cap screen]
            | "_screen_window"  == name -> Right [datatype cap screen]

          Mixer.Protect "vk_video/vulkan_video_codec_h264std.h"
            | "StdVideoH264ProfileIdc"                 == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264LevelIdc"                   == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264ChromaFormatIdc"            == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264PocType"                    == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264SpsFlags"                   == name -> Right [datatype name Nothing]
            | "StdVideoH264ScalingLists"               == name -> Right [datatype name Nothing]
            | "StdVideoH264SequenceParameterSetVui"    == name -> Right [datatype name Nothing]
            | "StdVideoH264AspectRatioIdc"             == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264HrdParameters"              == name -> Right [datatype name Nothing]
            | "StdVideoH264SpsVuiFlags"                == name -> Right [datatype name Nothing]
            | "StdVideoH264WeightedBipredIdc"          == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264PpsFlags"                   == name -> Right [datatype name Nothing]
            | "StdVideoH264SliceType"                  == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264CabacInitIdc"               == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264DisableDeblockingFilterIdc" == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264PictureType"                == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264ModificationOfPicNumsIdc"   == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264MemMgmtControlOp"           == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH264SequenceParameterSet"       == name -> Right [datatype name Nothing]
            | "StdVideoH264PictureParameterSet"        == name -> Right [datatype name Nothing]

          Mixer.Protect "vk_video/vulkan_video_codec_h264std_decode.h"
            | "StdVideoDecodeH264PictureInfo"        == name -> Right [datatype name Nothing]
            | "StdVideoDecodeH264ReferenceInfo"      == name -> Right [datatype name Nothing]
            | "StdVideoDecodeH264PictureInfoFlags"   == name -> Right [datatype name Nothing]
            | "StdVideoDecodeH264ReferenceInfoFlags" == name -> Right [datatype name Nothing]

          Mixer.Protect "vk_video/vulkan_video_codec_h264std_encode.h"
            | "StdVideoEncodeH264SliceHeader"              == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264PictureInfo"              == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264ReferenceInfo"            == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264SliceHeaderFlags"         == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264RefMemMgmtCtrlOperations" == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264PictureInfoFlags"         == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264ReferenceInfoFlags"       == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264RefMgmtFlags"             == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264RefListModEntry"          == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH264RefPicMarkingEntry"       == name -> Right [datatype name Nothing]

          Mixer.Protect "vk_video/vulkan_video_codec_h265std.h"
            | "StdVideoH265ProfileIdc"              == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH265VideoParameterSet"       == name -> Right [datatype name Nothing]
            | "StdVideoH265SequenceParameterSet"    == name -> Right [datatype name Nothing]
            | "StdVideoH265PictureParameterSet"     == name -> Right [datatype name Nothing]
            | "StdVideoH265DecPicBufMgr"            == name -> Right [datatype name Nothing]
            | "StdVideoH265HrdParameters"           == name -> Right [datatype name Nothing]
            | "StdVideoH265VpsFlags"                == name -> Right [datatype name Nothing]
            | "StdVideoH265LevelIdc"                == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH265SpsFlags"                == name -> Right [datatype name Nothing]
            | "StdVideoH265ScalingLists"            == name -> Right [datatype name Nothing]
            | "StdVideoH265SequenceParameterSetVui" == name -> Right [datatype name Nothing]
            | "StdVideoH265PredictorPaletteEntries" == name -> Right [datatype name Nothing]
            | "StdVideoH265PpsFlags"                == name -> Right [datatype name Nothing]
            | "StdVideoH265SubLayerHrdParameters"   == name -> Right [datatype name Nothing]
            | "StdVideoH265HrdFlags"                == name -> Right [datatype name Nothing]
            | "StdVideoH265SpsVuiFlags"             == name -> Right [datatype name Nothing]
            | "StdVideoH265SliceType"               == name -> Right [synonym name "CInt" Nothing]
            | "StdVideoH265PictureType"             == name -> Right [synonym name "CInt" Nothing]

          Mixer.Protect "vk_video/vulkan_video_codec_h265std_decode.h"
            | "StdVideoDecodeH265PictureInfo"        == name -> Right [datatype name Nothing]
            | "StdVideoDecodeH265ReferenceInfo"      == name -> Right [datatype name Nothing]
            | "StdVideoDecodeH265PictureInfoFlags"   == name -> Right [datatype name Nothing]
            | "StdVideoDecodeH265ReferenceInfoFlags" == name -> Right [datatype name Nothing]

          Mixer.Protect "vk_video/vulkan_video_codec_h265std_encode.h"
            | "StdVideoEncodeH265PictureInfoFlags"           == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265PictureInfo"                == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265SliceSegmentHeader"         == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265ReferenceInfo"              == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265ReferenceModifications"     == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265SliceSegmentHeaderFlags"    == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265ReferenceInfoFlags"         == name -> Right [datatype name Nothing]
            | "StdVideoEncodeH265ReferenceModificationFlags" == name -> Right [datatype name Nothing]

          _                             -> Left $ "Unhandled protected " <> name

  Right Module
          { ext      = Hs
          , pragmas  = [Pragma "EmptyDataDecls"]
          , name     = protectName
          , flags    = Nothing
          , exports  = []
          , includes = []
          , imports  = [Import "Data.Word", Import "Foreign.C.Types", Import "Foreign.Ptr"]
          , decls    = decls
          }



packageDefines :: Mixed -> Either String Module
packageDefines mixed = do
  decls <-
    (\f -> foldlM f [] $ getField @"defines" mixed) $ \acc name ->
      (<> acc) . fmap ((,) name) <$>
        case () of
          () | List.isPrefixOf "VK_API_VERSION_1" name
                 || elem name [ "VK_HEADER_VERSION", "VK_HEADER_VERSION_COMPLETE"
                              , "VK_USE_64_BIT_PTR_DEFINES" ] ->
                 Right [ Pattern
                           { name    = name
                           , type_   = deriveConstType (Integral 0 :: Value Integer) :| []
                           , value   = "#{const " <> name <> "}"
                           , comment = Nothing
                           , flags   = Nothing
                           }
                       ]

             | elem name [ "VK_API_VERSION", "VK_DEFINE_HANDLE"
                         , "VK_DEFINE_NON_DISPATCHABLE_HANDLE" ] -> Right []

             | "VK_NULL_HANDLE" == name ->
                 Right [ RawDeclaration
                           { decl     =
                               List.intercalate "\n"
                                 [ "class VulkanPtr ptr where"
                                 , "  vk_null_handle :: ptr a"
                                 , ""
                                 , "instance VulkanPtr Ptr where"
                                 , "  vk_null_handle = nullPtr"
                                 , ""
                                 , "instance VulkanPtr VkPtr where"
                                 , "#if VK_USE_64_BIT_PTR_DEFINES == 1"
                                 , "  vk_null_handle = VkPtr nullPtr"
                                 , "#else"
                                 , "  vk_null_handle = VkPtr 0"
                                 , "#endif"
                                 , ""
                                 , "pattern VK_NULL_HANDLE :: (Eq (ptr a), VulkanPtr ptr) => ptr a"
                                 , "pattern VK_NULL_HANDLE <- ((== vk_null_handle) -> True)"
                                 , "  where"
                                 , "    VK_NULL_HANDLE = vk_null_handle"
                                 ]
                           , comment = Nothing
                           , flags   = Nothing
                           }
                       ]

             | "VK_MAKE_VERSION" == name ->
                 Right [ PatternFunc
                           { name     = name
                           , funcname = toLower <$> name
                           , type_    = stimes (4 :: Int) $ "#{type uint32_t}" :| []
                           , comment  = Nothing
                           , flags    = Nothing
                           }
                       ]

             | "VK_MAKE_API_VERSION" == name ->
                 Right [ PatternFunc
                           { name     = name
                           , funcname = toLower <$> name
                           , type_    = stimes (5 :: Int) $ "#{type uint32_t}" :| []
                           , comment  = Nothing
                           , flags    = Nothing
                           }
                       ]

             | elem name [ "VK_API_VERSION_MAJOR", "VK_API_VERSION_MINOR", "VK_API_VERSION_PATCH", "VK_API_VERSION_VARIANT"
                         , "VK_VERSION_MAJOR", "VK_VERSION_MINOR", "VK_VERSION_PATCH" ] ->
                 Right [ PatternFunc
                           { name     = name
                           , funcname = toLower <$> name
                           , type_    = stimes (2 :: Int) $ "#{type uint32_t}" :| []
                           , comment  = Nothing
                           , flags    = Nothing
                           }
                       ]

             | otherwise -> Left $ "Unhandled define " <> name

  Right Module
          { ext      = Hsc
          , pragmas  = [ Pragma "CApiFFI", Pragma "ForeignFunctionInterface"
                       , Pragma "PatternSynonyms", Pragma "ViewPatterns" ]
          , name     = defineName
          , flags    = Nothing
          , exports  = Export "VulkanPtr" :
                         foldr (\a -> (ExportPattern a :)) [] (fst <$> decls)
          , includes = [vulkan_h]
          , imports  = [Import "Data.Word", Import "Foreign.Ptr", toImport handleName]
          , decls    = snd <$> decls
          }



packageBases :: Mixed -> Module
packageBases mixed =
  let decls =
        (\f -> Map.foldrWithKey f [] $ getField @"bases" mixed) $ \name base acc ->
          (: acc) $
            case getField @"flavor" base of
              Opaque        -> EmptyDatatype
                                 { name    = name
                                 , cname   = Just name
                                 , comment = Nothing
                                 , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" base)
                                 }
              Synonym type_ ->
                TypeSynonym
                  { name    = name
                  , args    = Arg (deriveType name type_) Nothing :| []
                  , comment = Nothing
                  , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" base)
                  }
  in Module
       { ext      = Hsc
       , pragmas  = []
       , name     = baseName
       , flags    = Nothing
       , exports  = []
       , includes = [vulkan_h]
       , imports  = [Import "Data.Word", Import "Foreign.Ptr"]
       , decls    = decls
       }



packageConstants :: Mixed -> Module
packageConstants mixed =
  let decls =
        (\f -> Map.foldrWithKey f [] $ getField @"constants" mixed) $ \name cons acc ->
          (: acc) $
            case getField @"alias" cons of
              Just alias ->
                Pattern
                 { name    = name
                 , type_   = deriveConstType (getField @"value" cons) :| []
                 , value   = alias
                 , comment = getField @"comment" cons
                 , flags   = Nothing
                 }

              Nothing ->
                case constValue $ getField @"value" cons of
                  Left cstr ->
                    PatternCString
                      { name    = name
                      , type_   = deriveConstType (getField @"value" cons) :| []
                      , string  = cstr
                      , comment = getField @"comment" cons
                      , flags   = Nothing
                      }
                  Right val ->
                    Pattern
                      { name    = name
                      , type_   = deriveConstType (getField @"value" cons) :| []
                      , value   = val
                      , comment = getField @"comment" cons
                      , flags   = Nothing
                      }

  in Module
       { ext      = Hsc
       , pragmas  = [Pragma "PatternSynonyms"]
       , name     = constantName
       , flags    = Nothing
       , exports  = []
       , includes = [vulkan_h]
       , imports  = []
       , decls    = decls
       }



packageEnums :: Mixed -> [Module]
packageEnums mixed =
  let mkEnum :: Enumerator -> Declaration
      mkEnum enum =
        case getField @"flavor" enum of
          Alias alias ->
            Pattern
              { name    = getField @"name" enum
              , type_   = deriveConstType (Integral 0 :: Value Integer) :| []
              , value   = alias
              , comment = getField @"comment" enum
              , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" enum)
              }

          Normal value ->
            case constValue value of
              Left cstr ->
                PatternCString
                  { name    = getField @"name" enum
                  , type_   = deriveConstType value :| []
                  , string  = cstr
                  , comment = getField @"comment" enum
                  , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" enum)
                  }
              Right val ->
                Pattern
                  { name    = getField @"name" enum
                  , type_   = deriveConstType value :| []
                  , value   = val
                  , comment = getField @"comment" enum
                  , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" enum)
                  }

  in (\f -> Map.foldrWithKey f [] $ getField @"enums" mixed) $ \name enum acc ->
       (: acc) $
         case getField @"flavor" enum of
           Alias alias ->
             let aliased =
                   TypeSynonym
                     { name    = name
                     , args    = Arg alias Nothing :| []
                     , comment = getField @"comment" enum
                     , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" enum)
                     }
             in Module
                  { ext      = Hsc
                  , pragmas  = [Pragma "CPP"]
                  , name     = enumName name
                  , flags    = Nothing
                  , exports  = []
                  , includes = [vulkan_h]
                  , imports  = [Import "Data.Int", toImport $ enumName alias]
                  , decls    = [aliased]
                  }

           Normal entries ->
             let top =
                   TypeSynonym
                     { name    = name
                     , args    = case getField @"type_" enum of
                                   Int           -> Arg (shapeType $ HscType "int") Nothing :| []
                                   Custom custom -> Arg (shapeType custom)          Nothing :| []
                     , comment = getField @"comment" enum
                     , flags   = Flags FlagHsc <$> deriveFlags (getField @"tags" enum)
                     }

             in Module
                  { ext      = Hsc
                  , pragmas  = [Pragma "CPP", Pragma "PatternSynonyms"]
                  , name     = enumName name
                  , flags    = Nothing
                  , exports  = []
                  , includes = [vulkan_h]
                  , imports  = case getField @"type_" enum of
                                 Int           -> [Import "Data.Int"]
                                 Custom custom -> depToImports (dependencies custom)
                  , decls    = top : fmap mkEnum entries
                  }



packageFuncPointers :: Mixed -> Module
packageFuncPointers mixed =
  let shapeArg Mixer.Field {..} =
        Arg
          { type_   = shapeType type_
          , comment = Just name
          }

      (deps, decls) =
        (\f -> Map.foldrWithKey f mempty (getField @"funcpointers" mixed)) $ \name fptr (deps', acc) ->
          ( case fptr of
              VoidPointer    -> deps'
              FuncPointer {} ->
                foldr (mappend . dependencies) deps'
                  (getField @"return" fptr : (getField @"type_" <$> getField @"fields" fptr))

          , (: acc) $
              TypeSynonym
                { name    = name
                , args    =
                    case fptr of
                      VoidPointer    -> Arg "Void" Nothing :| []
                      FuncPointer {} ->
                        case (shapeArg <$> getField @"fields" fptr) <>
                                [Arg (shapeType . Type1 "IO" $ getField @"return" fptr) Nothing] of
                          []     -> errorWithoutStackTrace "Packager: empty nonempty list"
                          ne:nes -> ne :| nes

                , comment = Nothing
                , flags   = Nothing
                }
          )
  in Module
       { ext      = Hsc
       , pragmas  = []
       , name     = funcPointerName
       , flags    = Nothing
       , exports  = []
       , includes = [vulkan_h]
       , imports  = [ Import "Data.Int", Import "Data.Void", Import "Data.Word"
                    , Import "Foreign.Ptr" ] <> depToImports (purgeCategory FunPointer deps)
       , decls    = decls
       }



packageHandles :: Mixed -> Module
packageHandles mixed =
  let ndhandle = RawDeclaration
                   { decl    =
                       List.intercalate "\n"
                         [ "-- | Non-dispatchable handle type"
                         , "#if VK_USE_64_BIT_PTR_DEFINES == 1"
                         , "newtype VkPtr a = VkPtr (Ptr a)"
                         , "#else"
                         , "newtype VkPtr a = VkPtr #{type uint64_t}"
                         , "#endif"
                         , "                  deriving (Show, Eq, Ord, Storable)"
                         ]
                   , comment = Nothing
                   , flags   = Nothing
                   }

      decls =
        (\f -> Map.foldrWithKey f [] $ getField @"handles" mixed) $ \name hand acc ->
          (<> acc) $
            case hand of
              Alias alias ->
                pure TypeSynonym
                       { name    = name
                       , args    = Arg alias Nothing :| []
                       , comment = Nothing
                       , flags   = Nothing
                       }

              Normal handle ->
                [ EmptyDatatype
                    { name    = name <> "_T"
                    , cname   = Just $ "struct " <> name <> "_T"
                    , comment = Nothing
                    , flags   = Nothing
                    }
                , TypeSynonym
                    { name    = name
                    , args    = case handle of
                                  DispatchableHandle    -> Arg ("Ptr " <> name <> "_T") Nothing :| []
                                  NonDispatchableHandle -> Arg ("VkPtr " <> name <> "_T") Nothing :| []
                    , comment = Nothing
                    , flags   = Nothing
                    }
                ]

  in Module
       { ext      = Hsc
       , pragmas  = [Pragma "CPP", Pragma "GeneralizedNewtypeDeriving"]
       , name     = handleName
       , flags    = Nothing
       , exports  = []
       , includes = [vulkan_h]
       , imports  = [Import "Data.Word", Import "Foreign.Ptr", Import "Foreign.Storable"]
       , decls    = ndhandle : decls
       }



packageStructs :: Mixed -> Augments -> [Module]
packageStructs mixed augs = do
  (\f -> Map.foldrWithKey f [] $ getField @"structs" mixed) $ \name strt acc ->
    (: acc) $
      case strt of
        Alias alias ->
          let aliased =
                TypeSynonym
                  { name    = name
                  , args    = Arg alias Nothing :| []
                  , comment = Nothing
                  , flags   = Nothing
                  }
          in Module
               { ext      = Hsc
               , pragmas  = []
               , name     = structName name
               , flags    = Nothing
               , exports  = []
               , includes = [vulkan_h]
               , imports  = [toImport $ structName alias]
               , decls    = [aliased]
               }

        Normal struct ->
          let (deps, censored, fields) =
                if Set.member name (getField @"cauterizedStructs" augs)
                  then mempty
                  else
                    (\f -> foldr f mempty (getField @"fields" struct)) $ \field (deps', cens, acc') ->
                      ( dependencies (getField @"type_" field) <> deps'
                      , case censor $ getField @"name" field of
                          Nothing -> cens
                          Just c  -> ( getField @"name" field
                                     , c
                                     , shapeType $ getField @"type_" field
                                     )
                                     : cens
                      , (: acc')
                          ( getField @"name" field
                          , Packager.Field
                              { name    = fromMaybe (getField @"name" field) (censor $ getField @"name" field)
                              , type_   = shapeType $ getField @"type_" field
                              , comment = getField @"comment" field
                              }
                          )
                      )

              decls =
                [ Datatype
                    { name    = name
                    , cname   = Just name
                    , fields  = snd <$> fields
                    , comment = Nothing
                    , flags   = Nothing
                    }
                , StorableInstance
                    { name       = name
                    , fieldnames =
                        if Set.member name (getField @"cauterizedStructs" augs)
                          then []
                          else getField @"name" <$> NonEmpty.toList (getField @"fields" struct)
                    , flavor     = Packager.Struct
                    , comment    = Nothing
                    , flags      = Nothing
                    }
                ]
                <> ( fields <&> \field ->
                       OffsetInstance
                         { name      = name
                         , fieldname = getField @"name" $ snd field
                         , offset    = fst field
                         , flavor    = Packager.Struct
                         , comment   = Nothing
                         , flags     = Nothing
                         }
                   )
                <> ( censored <&> \(fname, synname, _ftype) ->
                       OffsetSynonymInstance
                         { name      = name
                         , fieldname = fname
                         , synonym   = synname
                         , comment   = Nothing
                         , flags     = Nothing
                         }
                   )
                <> ( censored <&> \(fname, synname, ftype) ->
                       FieldSynonymInstance
                         { name      = name
                         , fieldname = fname
                         , synonym   = synname
                         , syntype   = ftype
                         , comment   = Nothing
                         , flags     = Nothing
                         }
                   )

          in Module
               { ext      = Hsc
               , pragmas  = [ Pragma "DataKinds"
                            , Pragma "DuplicateRecordFields"
                            , Pragma "MultiParamTypeClasses"
                            , GatedPragma (Flags FlagHsc "__GLASGOW_HASKELL__ >= 902") "NoFieldSelectors"
                            , Pragma "TypeApplications"
                            ]
               , name     = structName name
               , flags    = Flags FlagHsc <$> deriveFlags (getField @"tags" struct)
               , exports  = []
               , includes = [vulkan_h]
               , imports  = mconcat
                              [ [ Import "Data.Int", Import "Data.Word", Import "Foreign.Ptr"
                                , Import "Foreign.Storable", Import "Foreign.Storable.Offset" ]
                              , if null censored
                                  then []
                                  else [Import "GHC.Records"]
                                -- VkBaseInStructure and VkBaseOutStructure are immediately recursive.
                              , filter (\(Import i) -> i /= moduleName (structName name)) $ depToImports deps
                              ]
               , decls    = decls
               }



packageUnions :: Mixed -> [Module]
packageUnions mixed = do
  (\f -> Map.foldrWithKey f [] $ getField @"unions" mixed) $ \name unio acc ->
    (: acc) $
      case unio of
        Alias alias ->
          let aliased =
                TypeSynonym
                  { name    = name
                  , args    = Arg alias Nothing :| []
                  , comment = Nothing
                  , flags   = Nothing
                  }
          in Module
               { ext      = Hsc
               , pragmas  = []
               , name     = unionName name
               , flags    = Nothing
               , exports  = []
               , includes = [vulkan_h]
               , imports  = [toImport $ unionName alias]
               , decls    = [aliased]
               }

        Normal union ->
          let (deps, censored, fields) =
                (\f -> foldr f mempty (getField @"fields" union)) $ \field (deps', cens, acc') ->
                  ( dependencies (getField @"type_" field) <> deps'
                  , case censor $ getField @"name" field of
                      Nothing -> cens
                      Just c  -> ( getField @"name" field
                                 , c
                                 , shapeType $ getField @"type_" field
                                 )
                                 : cens
                  , (: acc')
                      ( getField @"name" field
                      , Packager.Field
                          { name    = fromMaybe (getField @"name" field) (censor $ getField @"name" field)
                          , type_   = shapeType $ getField @"type_" field
                          , comment = getField @"comment" field
                          }
                      )
                  )

              decls =
                [ Datatype
                    { name    = name
                    , cname   = Just name
                    , fields  = snd <$> fields
                    , comment = Nothing
                    , flags   = Nothing
                    }
                , StorableInstance
                    { name       = name
                    , fieldnames = getField @"name" <$> NonEmpty.toList (getField @"fields" union)
                    , flavor     = Packager.Union
                    , comment    = Nothing
                    , flags      = Nothing
                    }
                ]
                <> ( fields <&> \field ->
                       OffsetInstance
                         { name      = name
                         , fieldname = getField @"name" $ snd field
                         , offset    = fst field
                         , flavor    = Packager.Union
                         , comment   = Nothing
                         , flags     = Nothing
                         }
                   )
                <> ( censored <&> \(fname, synname, _ftype) ->
                       OffsetSynonymInstance
                         { name      = name
                         , fieldname = fname
                         , synonym   = synname
                         , comment   = Nothing
                         , flags     = Nothing
                         }
                   )
                <> ( censored <&> \(fname, synname, ftype) ->
                       FieldSynonymInstance
                         { name      = name
                         , fieldname = fname
                         , synonym   = synname
                         , syntype   = ftype
                         , comment   = Nothing
                         , flags     = Nothing
                         }
                   )

          in Module
               { ext      = Hsc
               , pragmas  = [ Pragma "DataKinds"
                            , Pragma "DuplicateRecordFields"
                            , Pragma "MultiParamTypeClasses"
                            , GatedPragma (Flags FlagHsc "__GLASGOW_HASKELL__ >= 902") "NoFieldSelectors"
                            , Pragma "TypeApplications"
                            ]
               , name     = unionName name
               , flags    = Flags FlagHsc <$> deriveFlags (getField @"tags" union)
               , exports  = []
               , includes = [vulkan_h]
               , imports  = mconcat
                              [ [ Import "Data.Int", Import "Data.Word", Import "Foreign.Ptr"
                                , Import "Foreign.Storable", Import "Foreign.Storable.Offset" ]
                              , if null censored
                                  then []
                                  else [Import "GHC.Records"]
                              , depToImports deps
                              ]
               , decls    = decls
               }



toCap :: String -> String
toCap (a:bs) = toUpper a : bs
toCap as     = as

toFun :: String -> String
toFun ('v':'k':as) = 'v':'k':'F':'u':'n':as
toFun as           = as

packageCommands :: Mixed -> Augments -> [Module]
packageCommands mixed augs = do
  (\f -> Map.foldrWithKey f [] $ getField @"commands" mixed) $ \name comm acc ->
    (: acc) $
      let (deps0, args0) =
            (\f -> foldr f mempty (getField @"arguments" comm)) $ \arg (deps', acc') ->
              ( dependencies (getField @"type_" arg) <> deps'
              , (: acc') $ Arg
                             { type_   = shapeType $ getField @"type_" arg
                             , comment = Just $ getField @"name" arg
                             }
              )

          deps1 = dependencies (getField @"return" comm) <> deps0

          args1 = case args0 <> [Arg (shapeType . Type1 "IO" $ getField @"return" comm) Nothing] of
                    []     -> errorWithoutStackTrace "Packager: empty nonempty list"
                    ne:nes -> ne :| nes

          addAliasDep =
            case getField @"type_" comm of
              Normal _    -> id
              Alias alias -> mappend . Dependencies $ Map.singleton Function (Set.singleton (toCap alias))

          new = case getField @"type_" comm of
                  Normal mayFlavor
                    | Imported mayFlag <- mayFlavor
                    , not . Set.member name $ getField @"demotedCommands" augs
                        -> [ TypeSynonym
                               { name    = toCap name
                               , args    = args1
                               , comment = Nothing
                               , flags   = Nothing
                               }
                           , Func
                               { name    = toFun name
                               , type_   = ("VkFun " <> toCap name) :| []
                               , value   = "VkFun (Ptr (\"" <> name <> "\\0\"##))"
                               , comment = Nothing
                               , flags   = Nothing
                               }
                           , ForeignImport
                               { name    = name
                               , args    = Arg (toCap name) Nothing :| []
                               , comment = Nothing
                               , flags   = Flags FlagCPP <$> mayFlag
                               }
                           ]

                    | otherwise ->
                        [ TypeSynonym
                            { name    = toCap name
                            , args    = args1
                            , comment = Nothing
                            , flags   = Nothing
                            }
                        , Func
                            { name    = toFun name
                            , type_   = ("VkFun " <> toCap name) :| []
                            , value   = "VkFun (Ptr (\"" <> name <> "\\0\"##))"
                            , comment = Nothing
                            , flags   = Nothing
                            }
                        ]

                  Alias alias ->
                    [ TypeSynonym
                        { name    = toCap name
                        , args    = Arg (toCap alias) Nothing :| []
                        , comment = Nothing
                        , flags   = Nothing
                        }
                    , FunctionSynonym
                        { name    = toFun name
                        , synonym = toFun alias
                        , args    = Arg ("VkFun " <> toCap name) Nothing :| []
                        , comment = Nothing
                        , flags   = Nothing
                        }
                    ]

      in Module
           { ext      = Hsc
           , pragmas  = case getField @"type_" comm of
                          Normal cmdtype ->
                            let tagmod =
                                  case cmdtype of
                                    Imported _ -> (:) $ Pragma "ForeignFunctionInterface"
                                    _          -> id

                            in tagmod [Pragma "CApiFFI", Pragma "CPP", Pragma "MagicHash"]

                          Alias _  -> []

           , name     = commandName name
           , flags    = Flags FlagHsc <$> deriveFlags (getField @"tags" comm)
           , exports  = []
           , includes = [vulkan_h]
           , imports  = Import "Data.Int" : Import "Data.Word" : Import "GHC.Ptr"
                      : depToImports (addAliasDep deps1) <> [Import "Vulkan.Types.VkFun"]
           , decls    = new
           }



toFlagName :: String -> Double -> String
toFlagName "vulkan" 1.1 = "CORE_1_1"
toFlagName "vulkan" 1.2 = "CORE_1_2"
toFlagName "vulkan" 1.3 = "CORE_1_3"
toFlagName api      ver = error $ "No defined flag name for " <> api <> " v" <> show ver

packageFeatures :: Mixed -> Augments -> Either String [Module]
packageFeatures mixed augs =
  (\f -> foldlM f [] $ getField @"features" mixed) $ \acc feat -> do
    mdlname <- featureName (getField @"api" feat) (getField @"number" feat)

    let toExport :: Require -> [Export]
        toExport req =
          case req of
            RequireType name cat     ->
              case cat of
                Mixer.Include -> []
                Define        | elem name [ "VK_DEFINE_HANDLE", "VK_DEFINE_NON_DISPATCHABLE_HANDLE"
                                          , "VK_API_VERSION" ]
                                  -> []
                              | name == "VK_NULL_HANDLE"
                                  -> [Export "VkPtr (..)", Export "VulkanPtr", ExportPattern name]

                              | otherwise -> [ExportPattern name]
                Const         -> [ExportPattern name]
                _             -> [Export name]

            RequireEnumerator _ name            -> [ExportPattern name]
            RequireEnumeratorInplace name _ _ _ -> [ExportPattern name]
            RequireHandle name mayAlias ->
              case mayAlias of
                Nothing -> [Export $ name <> "_T", Export name]
                Just _  -> [Export name]

            RequireStruct name mayAlias ->
              case mayAlias of
                Nothing -> [ExportOpen name]
                Just _  -> [Export name]

            RequireUnion name mayAlias ->
              case mayAlias of
                Nothing -> [ExportOpen name]
                Just _  -> [Export name]

            RequireCommand name type_ ->
              case type_ of
                Imported mayFlag
                  | name == "vkGetDeviceProcAddr" -> [ Export $ toCap name
                                                     , Export $ toFun name
                                                     , Export name
                                                     , Export $ name <> "Unsafe"
                                                     , Export "VkFun (..)"
                                                     , Export "vkGetInstanceFunPtr"
                                                     , Export "vkGetInstanceFunPtrUnsafe"
                                                     , Export "vkGetDeviceFunPtr"
                                                     , Export "vkGetDeviceFunPtrUnsafe"
                                                     ]
                  | Set.member name $ getField @"demotedCommands" augs
                              -> [Export $ toCap name, Export $ toFun name]

                  | otherwise ->
                      [Export $ toCap name, Export $ toFun name]
                        <> case mayFlag of
                             Nothing   -> [ Export name, Export $ name <> "Unsafe" ]
                             Just flag -> [ ExportFlag (Flags FlagCPP flag)
                                              [ Export name
                                              , Export $ name <> "Unsafe"
                                              ]
                                          ]

                Extended -> [Export $ toCap name, Export $ toFun name]

        toDependencies :: Require -> Dependencies
        toDependencies req =
          case req of
            RequireType name cat     -> Dependencies $ Map.singleton cat (Set.singleton name)
            RequireEnumerator extd _ -> Dependencies $ Map.singleton Enumerated (Set.singleton extd)
            RequireEnumeratorInplace {} -> mempty
            RequireHandle name _     -> Dependencies $ Map.singleton Mixer.Handle (Set.singleton name)
            RequireStruct name _     -> Dependencies $ Map.singleton Mixer.Struct (Set.singleton name)
            RequireUnion name _      -> Dependencies $ Map.singleton Mixer.Union (Set.singleton name)
            RequireCommand cmd _     -> Dependencies $ Map.singleton Function (Set.singleton cmd)

        _toDeclaration :: Require -> [Declaration]
        _toDeclaration req =
          case req of
            RequireType _ _       -> []
            RequireEnumerator _ _ -> []
            RequireEnumeratorInplace name val (Just alias) comment ->
              pure Pattern
                     { name    = name
                     , type_   = deriveConstType val :| []
                     , value   = alias
                     , comment = comment
                     , flags   = Nothing
                     }

            RequireEnumeratorInplace name val Nothing comment ->
              case constValue val of
                Left cstr ->
                  pure PatternCString
                         { name    = name
                         , type_   = deriveConstType val :| []
                         , string  = cstr
                         , comment = comment
                         , flags   = Nothing
                         }
                Right flat ->
                  pure Pattern
                         { name    = name
                         , type_   = deriveConstType val :| []
                         , value   = flat
                         , comment = comment
                         , flags   = Nothing
                         }

            RequireHandle _ _     -> []
            RequireStruct _ _     -> []
            RequireUnion  _ _     -> []
            RequireCommand _ _    -> []

        exports :: [Export]
        deps :: Dependencies
        decls :: [Declaration]
        (exports, deps, decls) =
          (\f -> foldr f mempty $ getField @"blocks" feat) $ \block (acc0, deps0, decl0) ->
            ( (<> acc0) $
                let withComment = case getField @"comment" block of
                                    Nothing   -> id
                                    Just comm -> (:) $ ExportComment comm
                in case deriveFlags $ getField @"tags" block of
                     Just flags -> [ ExportFlag (Flags FlagHsc flags) .
                                       withComment .
                                         foldMap toExport $ getField @"requires" block
                                   ]
                     Nothing    -> withComment .
                                     foldMap toExport $ getField @"requires" block

            , foldMap toDependencies (getField @"requires" block) <> deps0
            , decl0
            )

    Right . ((<>) acc . pure) $
              Module
                { ext      = Hsc
                , pragmas  = ( if getField @"number" feat == 1
                                 then id
                                 else (:) $ HaddockPragma "not-home"
                             )
                               [ Pragma "CPP", Pragma "PatternSynonyms"]
                , name     = mdlname
                , flags    = Just . Flags FlagHsc $ getField @"name" feat
                , exports  = exports
                , includes = [vulkan_h]
                , imports  = depToImports deps
                               <> [ Import "Vulkan.Types.Command.VkGetDeviceFunPtr"
                                  , Import "Vulkan.Types.Command.VkGetInstanceFunPtr"
                                  , Import "Vulkan.Types.VkFun"
                                  ]
                , decls    = decls
                }



packageExtensions :: Mixed -> [Module]
packageExtensions mixed =
  (\f -> Map.foldrWithKey f [] $ getField @"extensions" mixed) $ \extname feat acc -> do
    let toExport :: Require -> [Export]
        toExport req =
          case req of
            RequireType name cat     ->
              case cat of
                Mixer.Include -> []
                Define        -> [ExportPattern name]
                Const         -> [ExportPattern name]
                Handle        -> [Export $ name <> "_T", Export name]
                _             -> [Export name]

            RequireEnumerator _ name            -> [ExportPattern name]
            RequireEnumeratorInplace name _ _ _ -> [ExportPattern name]
            RequireHandle name mayAlias ->
              case mayAlias of
                Nothing -> [Export $ name <> "_T", Export name]
                Just _  -> [Export name]

            RequireStruct name mayAlias ->
              case mayAlias of
                Nothing -> [ExportOpen name]
                Just _  -> [Export name]

            RequireUnion name mayAlias ->
              case mayAlias of
                Nothing -> [ExportOpen name]
                Just _  -> [Export name]

            RequireCommand name type_           ->
              case type_ of
                Extended   -> [Export $ toCap name, Export $ toFun name]
                Imported _ -> [Export name]
        toDependencies :: Require -> Dependencies
        toDependencies req =
          case req of
            RequireType name cat     -> Dependencies $ Map.singleton cat (Set.singleton name)
            RequireEnumerator extd _ -> Dependencies $ Map.singleton Enumerated (Set.singleton extd)
            RequireEnumeratorInplace {} -> mempty
            RequireHandle name _     -> Dependencies $ Map.singleton Handle (Set.singleton name)
            RequireStruct name _     -> Dependencies $ Map.singleton Mixer.Struct (Set.singleton name)
            RequireUnion name _      -> Dependencies $ Map.singleton Mixer.Union (Set.singleton name)
            RequireCommand cmd _     -> Dependencies $ Map.singleton Function (Set.singleton cmd)

        toDeclaration :: Require -> [Declaration]
        toDeclaration req =
          case req of
            RequireType _ _       -> []
            RequireEnumerator _ _ -> []
            RequireEnumeratorInplace name val (Just alias) comment ->
              pure Pattern
                     { name    = name
                     , type_   = deriveConstType val :| []
                     , value   = alias
                     , comment = comment
                     , flags   = Nothing
                     }

            RequireEnumeratorInplace name val Nothing comment ->
              case constValue val of
                Left cstr ->
                  pure PatternCString
                         { name    = name
                         , type_   = deriveConstType val :| []
                         , string  = cstr
                         , comment = comment
                         , flags   = Nothing
                         }
                Right flat ->
                  pure Pattern
                         { name    = name
                         , type_   = deriveConstType val :| []
                         , value   = flat
                         , comment = comment
                         , flags   = Nothing
                         }

            RequireHandle  _ _    -> []
            RequireStruct  _ _    -> []
            RequireUnion   _ _    -> []
            RequireCommand _ _    -> []

        exports :: [Export]
        deps :: Dependencies
        decls :: [Declaration]
        (exports, deps, decls) =
          (\f -> foldr f mempty $ getField @"blocks" feat) $ \block (acc0, deps0, decl0) ->
            ( let withComment = case getField @"comment" block of
                                  Nothing   -> id
                                  Just comm -> (:) $ ExportComment comm

                  res = foldMap toExport $ getField @"requires" block

              in case deriveFlags $ getField @"tags" block of
                   Just flags -> ExportFlag (Flags FlagHsc flags) (withComment res) : acc0
                   Nothing    -> withComment res <> acc0

            , foldMap toDependencies (getField @"requires" block) <> deps0
            , foldMap toDeclaration (getField @"requires" block) <> decl0
            )

      in (: acc)
           Module
             { ext      = Hsc
             , pragmas  = [ Pragma "CPP", Pragma "MagicHash"
                          , Pragma "PatternSynonyms", Pragma "ViewPatterns" ]
             , name     = extensionName extname
             , flags    = Just $ Flags FlagHsc extname
             , exports  = exports
             , includes = [vulkan_h]
             , imports  = Import "Foreign.C.String" : Import "GHC.Ptr" :
                            (depToImports deps <> [Import "Vulkan.Types.VkFun"])
             , decls    = decls
             }



composePragma :: Pragma -> String
composePragma (Pragma p) = "{-# LANGUAGE " <> p <> " #-}"
composePragma (GatedPragma (Flags FlagHsc gate) p) =
  mconcat
    [ "#if ", gate, "\n"
    , "{-# LANGUAGE " <> p <> " #-}\n"
    , "#endif"
    ]
composePragma (GatedPragma (Flags FlagCPP gate) p) =
  mconcat
    [ "##if ", gate, "\n"
    , "{-# LANGUAGE " <> p <> " #-}\n"
    , "##endif"
    ]
composePragma (HaddockPragma p) = "{-# OPTIONS_HADDOCK " <> p <> " #-}"

data ExportPosition = First
                    | FirstAfterComment
                    | Second

composeExports :: [Export] -> String
composeExports = go First
  where
    go _       []   = ""
    go pos (ex:exs) =
      let comma = case pos of
                    First             -> ""
                    FirstAfterComment -> "    "
                    Second            -> "  , "
      in case ex of
           Export str           -> comma <> str <> "\n" <> go Second exs
           ExportOpen str       -> comma <> str <> " (..)\n" <> go Second exs
           ExportPattern str    -> comma <> "pattern " <> str <> "\n" <> go Second exs
           ExportComment str    ->
             case pos of
               First             ->     "-- | " <> str <> "\n" <> go FirstAfterComment exs
               FirstAfterComment -> "\n  -- | " <> str <> "\n" <> go FirstAfterComment exs
               Second            -> "\n  -- | " <> str <> "\n" <> go Second exs

           ExportFlag (Flags FlagHsc flag) exps ->
             mconcat
               [ "#if ", flag, "\n"
               , go pos exps
               , "#endif\n"
               , go Second exs
               ]

           ExportFlag (Flags FlagCPP flag) exps ->
             mconcat
               [ "##if ", flag, "\n"
               , go pos exps
               , "##endif\n"
               , go Second exs
               ]



composeImport :: Import -> String
composeImport (Import i) = "import " <> i

composeInclude :: Packager.Include -> String
composeInclude (Packager.Include i) = "#include <" <> i <> ">"

composeArg :: Arg -> String
composeArg (Arg str Nothing)        = str
composeArg (Arg str (Just comment)) = str <> " -- ^ " <> comment

composeField :: Packager.Field -> String
composeField (Packager.Field name str mayComment) =
  name <> " :: " <> str <> case mayComment of
                             Nothing      -> ""
                             Just comment -> " -- ^ " <> comment



composeDeclaration :: Ext -> Declaration -> String
composeDeclaration ext decl =
  mconcat
    [ case getField @"flags" decl of
        Nothing                  -> ""
        Just (Flags FlagHsc raw) -> "#if " <> raw <> "\n"
        Just (Flags FlagCPP raw) -> "##if " <> raw <> "\n"

    , case getField @"comment" decl of
        Nothing      -> ""
        Just comment -> "-- | " <> comment <> "\n"

    , case decl of
        EmptyDatatype {..} ->
          mconcat
            [ "data "
            , case cname of
                Nothing -> ""
                Just c  -> "{-# CTYPE \"vulkan/vulkan.h\" \"" <> c <> "\" #-} "
            , name
            ]

        Datatype {..} ->
          mconcat
            [ "data "
            , case cname of
                Nothing -> ""
                Just c  -> "{-# CTYPE \"vulkan/vulkan.h\" \"" <> c <> "\" #-} "
            , name
            , case fields of
                [] -> " = " <> name
                _  -> " =\n       " <> name <> "\n         { "
                   <> List.intercalate "\n         , " (composeField <$> fields)
                   <> "\n         }"
            ]


        TypeSynonym {..} ->
          mconcat
            [ "type ", name, " ="
            , case args of
                t :| [] -> " " <> composeArg t
                t :| ts ->
                  mconcat $ "\n          " :
                              List.intersperse "\n       -> " (composeArg <$> (t : ts))
            ]

        Func {..} ->
          mconcat
            [ name, " :: "
                  , mconcat . NonEmpty.toList $
                                NonEmpty.intersperse " -> " type_
                  , "\n"

            , name, " = ", value
            ]

        Pattern {..} ->
          mconcat
            [ "pattern ", name, " :: "
            , mconcat . NonEmpty.toList $
                          NonEmpty.intersperse " -> " type_
            , "\n"
            , "pattern ", name, " = ", value
            ]

        PatternFunc {..} ->
          let (expandl, expandr)
                | _ :| [_] <- type_ = (" a", " a")
                | otherwise         =
                   ( foldMap ((" a" <>) . show) $ NonEmpty.take (length type_ - 1) (0 :| [1 :: Int ..])
                   , " ((" <> replicate (length type_ - 2) ',' <> ")" <> expandl <> ")"
                   )
          in mconcat
               [ "foreign import capi unsafe \"vulkan/vulkan.h ", name, "\"\n"
               , "  ", funcname, " :: ", List.intercalate " -> " $ NonEmpty.toList type_
               , "\n\n"
               , "pattern ", name, " :: ", List.intercalate " -> " $ NonEmpty.toList type_, "\n"
               , "pattern ", name, expandl, " <- (const Nothing ->", " Just", expandr, ")\n"
               , "  where\n"
               , "    " <> name <> " = " <> funcname
               ]

        PatternCString {..} ->
          mconcat
            [ "pattern ", name, " :: "
                        , mconcat . NonEmpty.toList $
                                      NonEmpty.intersperse " -> " type_
                        , "\n"

            , "pattern ", name, " <- (const False -> True)\n"
            , "  where\n"
            , "    ", name, " = Ptr (\"", string, "\\0\"", case ext of
                                                             Hs  -> "#)"
                                                             Hsc -> "##)"
            ]

        ForeignImport {..} ->
          mconcat
            [ "foreign import CALLCV \"vulkan/vulkan.h ", name, "\"\n"
            , "  ", name, "\n"
            , "    :: ", List.intercalate "\n    -> " $ composeArg <$> NonEmpty.toList args
            , "\n\n"
            , "foreign import CALLCV unsafe \"vulkan/vulkan.h ", name, "\"\n"
            , "  ", name, "Unsafe\n"
            , "    :: ", List.intercalate "\n    -> " $ composeArg <$> NonEmpty.toList args
            ]

        FunctionSynonym {..} ->
          mconcat
            [ name, "\n"
            , "  :: ", List.intercalate "\n  -> " $ composeArg <$> NonEmpty.toList args, "\n"
            , name, " = ", synonym, "\n"
            ]

        StorableInstance {..} ->
          mconcat
            [ let flv = case flavor of
                          Packager.Struct -> "struct"
                          Packager.Union  -> "union"

              in mconcat
                   [ "instance Storable ", name, " where\n"
                   , "  sizeOf    _ = #{size      ", flv, " ", name, "}\n"
                   , "  alignment _ = #{alignment ", flv, " ", name, "}\n"
                   , "\n"
                   ]
            , case fieldnames of
                []     -> "  peek _ptr = pure " <> name
                fn:fns -> mconcat
                            [ "  peek ptr = \n"
                            , "    ", name, "\n"
                            , "       <$> peek (offset @\"", fn, "\" ptr)\n"
                            , List.intercalate "\n" $
                                fns <&> \fname ->
                                  "       <*> peek (offset @\"" <> fname <> "\" ptr)"
                            ]
            , "\n"
            , "\n"
            , case fieldnames of
                []  -> "  poke _ptr _val = return ()"
                _:_ -> mconcat
                         [ "  poke ptr val = do\n"
                         , List.intercalate "\n" $
                             fieldnames <&> \fname ->
                               "    pokeField @\"" <> fname <> "\" ptr val"
                         ]
            ]

        OffsetInstance {..} ->
          let flv = case flavor of
                      Packager.Struct -> "struct"
                      Packager.Union  -> "union"
          in mconcat
               [ "instance Offset \"", fieldname, "\" ", name, " where\n"
               , "  rawOffset = #{offset ", flv, " ", name, ", ", offset, "}"
               ]

        OffsetSynonymInstance {..} ->
          mconcat
            [ "instance Offset \"", fieldname, "\" ", name, " where\n"
            , "  rawOffset = rawOffset @\"", synonym, "\" @", name
            ]

        FieldSynonymInstance {..} ->
          mconcat
            [ "instance HasField \"", fieldname, "\" ", name, " ", syntype, " where\n"
            , "  getField = getField @\"", synonym, "\" @", name
            ]

        RawDeclaration {} -> getField @"decl" decl

    , case getField @"flags" decl of
        Nothing                -> ""
        Just (Flags FlagHsc _) -> "\n#endif"
        Just (Flags FlagCPP _) -> "\n##endif"
    ]



composeModule :: Module -> String
composeModule Module {..} =
  let mdl =
        mconcat
          [ "module ", moduleName name
          , case exports of
              [] -> " where"
              _  -> mconcat
                      [ "\n  ( "
                      , composeExports exports
                      ,   "  ) where"
                      ]

          , "\n\n"

          , case imports of
              [] -> ""
              _  -> List.intercalate "\n" (composeImport <$> imports) <> "\n\n\n\n"

          , List.intercalate "\n\n" $ composeDeclaration ext <$> decls
          ]

  in mconcat
       [ case pragmas of
           [] -> ""
           _  -> List.intercalate "\n" (composePragma <$> pragmas) <> "\n\n"

       , case includes of
           [] -> ""
           _  -> List.intercalate "\n" (composeInclude <$> includes) <> "\n\n"

       , case flags of
           Nothing  -> mdl
           Just (Flags FlagHsc raw) ->
             mconcat
               [ "#if ", raw, "\n"
               , "\n"
               , mdl, "\n"
               , "\n"
               , "#else\n"
               , "\n"
               , "module ", moduleName name, " where\n"
               , "\n"
               , "#endif"
               ]
           Just (Flags FlagCPP raw) ->
             mconcat
               [ "##if ", raw, "\n"
               , "\n"
               , mdl, "\n"
               , "\n"
               , "##else\n"
               , "\n"
               , "module ", moduleName name, " where\n"
               , "\n"
               , "##endif"
               ]

       ]




writeModules :: FilePath -> [Module] -> IO ()
writeModules path mdls = do
  let dirs = foldr (\m -> Set.insert $ moduleDir path (getField @"name" m)) Set.empty mdls
  putStrLn "Creating directories"
  for_ (Set.toList dirs) $ \dir -> do
    putStrLn $ "Creating directory " <> dir
    createDirectoryIfMissing True dir

  for_ mdls $ \mdl -> do
    putStrLn $ "Writing module " <> modulePath path mdl
    writeFile (modulePath path mdl) (composeModule mdl)



exposedDependencies :: Mixed -> Either String (Map (Maybe Cabal.Extension) [String])
exposedDependencies mixd = do
  feats <- (\f -> foldlM f [] $ getField @"features" mixd) $ \acc feat -> do
             name <- featureName (getField @"api" feat) (getField @"number" feat)
             Right $ acc <> [(Nothing, [moduleName name])]

  exts <- (\f -> foldlMWithKey f [] $ getField @"extensions" mixd) $ \acc name ext -> do
            mayPlatform <- flip traverse (getField @"platform" ext) $ \platform -> do
                             macro <- lookupProtect mixd platform
                             Right Cabal.Extension
                                     { name  = platform
                                     , macro = let Flags _ macro_ = macro
                                               in macro_
                                     }
            Right $ acc <> [(mayPlatform, [moduleName $ extensionName name])]

  Right . Map.fromListWith (flip (<>)) $ feats <> exts

otherDependencies :: Mixed -> SortedDependencies -> Map (Maybe Cabal.Extension) [String]
otherDependencies _mixd sorted =
  let fuse Mixer.Include _       = Nothing
      fuse Protected _           = Just $ protectName
      fuse Define _              = Just $ defineName
      fuse Basic _               = Just $ baseName
      fuse Const _               = Just $ constantName
      fuse Enumerated str        = Just $ enumName str
      fuse FunPointer _          = Just $ funcPointerName
      fuse Handle _              = Just $ handleName
      fuse Mixer.Struct str      = Just $ structName str
      fuse Mixer.Union str       = Just $ unionName str
      fuse Function str          = Just $ commandName str

  in sorted <&> \entry ->
       Set.toAscList . Set.fromList . catMaybes . fmap (fmap moduleName . uncurry fuse) $ Set.toList entry

cabalDependencies :: Mixed -> SortedDependencies -> Either String (Map (Maybe Cabal.Extension) Cabal.Body)
cabalDependencies mixd sorted = do
  exposed <- exposedDependencies mixd
  let other = Map.insertWith (<>) Nothing
                [ "Vulkan.Types.Command.VkGetDeviceFunPtr", "Vulkan.Types.Command.VkGetInstanceFunPtr"
                , "Vulkan.Types.Constant", "Vulkan.Types.VkFun"
                ]
                $ otherDependencies mixd sorted
  Right $ Map.mergeWithKey (\_ a b -> Just $ Cabal.Body a b)
                           (fmap $ flip Cabal.Body []) (fmap $ Cabal.Body []) exposed other



package :: Mixed -> Augments -> Either String [Module]
package mixed augs = do
  protect <- packageProtects mixed
  define <- packageDefines mixed
  feats <- packageFeatures mixed augs
  Right $ [ protect
          , define
          , packageBases mixed
          , packageConstants mixed
          , packageFuncPointers mixed
          , packageHandles mixed
          ]
     <> mconcat
          [ packageEnums mixed
          , packageStructs mixed augs
          , packageUnions mixed
          , packageCommands mixed augs
          , feats
          , packageExtensions mixed
          ]
