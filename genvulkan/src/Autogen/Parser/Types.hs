{-# LANGUAGE DataKinds
           , DerivingStrategies
           , DuplicateRecordFields
           , GeneralizedNewtypeDeriving
           , NoFieldSelectors
           , TypeApplications #-}

module Autogen.Parser.Types where

import           Data.List.NonEmpty (NonEmpty (..))
import           Data.Map (Map)
import qualified Data.Map as Map
import           GHC.Records
import           Prelude hiding (Enum, Integer)



newtype XsdFloat = XsdFloat String
                   deriving newtype Show

newtype XsdInteger = XsdInteger String
                     deriving newtype Show

newtype Integer = Integer String
                  deriving newtype Show

newtype EnumName = EnumName String
                   deriving newtype Show

newtype TypeName = TypeName String
                   deriving newtype Show

newtype TypeSuffix = TypeSuffix String
                     deriving newtype Show

newtype StringGroup = StringGroup String
                      deriving newtype Show



data Platform =
       Platform
         { name    :: String
         , protect :: String
         , comment :: Maybe String
         }
       deriving Show

data Platforms =
       Platforms
         { comment   :: Maybe String
         , platforms :: [Platform]
         }
       deriving Show



data Tag =
       Tag
         { name    :: String
         , author  :: String
         , contact :: String
         }
       deriving Show


data Tags =
       Tags
         { comment :: Maybe String
         , tags    :: [Tag]
         }
       deriving Show



data Mixed = Raw
               { contents :: String
               }
           | Tagged
               { tag      :: String
               , contents :: String
               }
             deriving Show

hasTag :: String -> Mixed -> Bool
hasTag tag (Tagged tag' _) = tag == tag'
hasTag _   _               = False

data TypeTwo = TypeMember
                 { attributes :: Map String String
                 , mixed      :: NonEmpty Mixed
                 }
             | TypeComment String
               deriving Show

instance HasField "api" TypeTwo (Maybe String) where
  getField = Map.lookup "api" . getField @"attributes"

instance HasField "len" TypeTwo (Maybe String) where
  getField = Map.lookup "len" . getField @"attributes"

instance HasField "altlen" TypeTwo (Maybe String) where
  getField = Map.lookup "altlen" . getField @"attributes"

instance HasField "externsync" TypeTwo (Maybe String) where
  getField = Map.lookup "externsync" . getField @"attributes"

instance HasField "optional" TypeTwo (Maybe String) where
  getField = Map.lookup "optional" . getField @"attributes"

instance HasField "selector" TypeTwo (Maybe String) where
  getField = Map.lookup "selector" . getField @"attributes"

instance HasField "selection" TypeTwo (Maybe EnumName) where
  getField = fmap EnumName . Map.lookup "selection" . getField @"attributes"

instance HasField "noautovalidity" TypeTwo (Maybe String) where
  getField = Map.lookup "noautovalidity" . getField @"attributes"

instance HasField "values" TypeTwo (Maybe String) where
  getField = Map.lookup "values" . getField @"attributes"

instance HasField "limittype" TypeTwo (Maybe String) where
  getField = Map.lookup "limittype" . getField @"attributes"

instance HasField "objecttype" TypeTwo (Maybe String) where
  getField = Map.lookup "objecttype" . getField @"attributes"

data TypeFlavor = TypeOne [Mixed]
                | TypeTwo [TypeTwo]
                  deriving Show

data Type =
       Type
         { attributes :: Map String String
         , flavor     :: TypeFlavor
         }
       deriving Show

instance HasField "api" Type (Maybe String) where
  getField = Map.lookup "api" . getField @"attributes"

instance HasField "alias" Type (Maybe String) where
  getField = Map.lookup "alias" . getField @"attributes"

instance HasField "requires" Type (Maybe String) where
  getField = Map.lookup "requires" . getField @"attributes"

instance HasField "bitvalues" Type (Maybe String) where
  getField = Map.lookup "bitvalues" . getField @"attributes"

instance HasField "name" Type (Maybe TypeName) where
  getField = fmap TypeName . Map.lookup "name" . getField @"attributes"

instance HasField "category" Type (Maybe String) where
  getField = Map.lookup "category" . getField @"attributes"

instance HasField "parent" Type (Maybe TypeName) where
  getField = fmap TypeName . Map.lookup "parent" . getField @"attributes"

instance HasField "returnedonly" Type (Maybe String) where
  getField = Map.lookup "returnedonly" . getField @"attributes"

instance HasField "structextends" Type (Maybe String) where
  getField = Map.lookup "structextends" . getField @"attributes"

instance HasField "allowduplicate" Type (Maybe String) where
  getField = Map.lookup "allowduplicate" . getField @"attributes"

instance HasField "objtypeenum" Type (Maybe String) where
  getField = Map.lookup "objtypeenum" . getField @"attributes"

instance HasField "comment" Type (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"

data TypesElement = TypesComment String
                  | TypesElement Type
                    deriving Show

data Types =
       Types
         { comment :: Maybe String
         , types   :: [TypesElement]
         }
       deriving Show



data EnumFlavor = EnumPlain
                    { value     :: Integer
                    , extends_  :: Maybe TypeName
                    }
                | EnumBitmask
                    { bitpos    :: Integer
                    , extends_  :: Maybe TypeName
                    }
                | EnumExtension
                    { extnumber :: Maybe Integer
                    , offset    :: Integer
                    , dir       :: Maybe String
                    , extends   :: TypeName
                    }
                | EnumAlias
                    { extends_  :: Maybe TypeName
                    , alias     :: TypeName
                    }
                  deriving Show

data Unused =
       Unused
         { start      :: Integer
         , attributes :: Map String String
         }
       deriving Show

instance HasField "end" Unused (Maybe Integer) where
  getField = fmap Integer . Map.lookup "end" . getField @"attributes"

instance HasField "vendor" Unused (Maybe String) where
  getField = Map.lookup "vendor" . getField @"attributes"

instance HasField "comment" Unused (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"

data Enum = Enum
              { flavor     :: Maybe EnumFlavor
              , name       :: String
              , attributes :: Map String String
              }
            deriving Show

instance HasField "protect" Enum (Maybe String) where
  getField = Map.lookup "protect" . getField @"attributes"

instance HasField "api" Enum (Maybe String) where
  getField = Map.lookup "api" . getField @"attributes"

instance HasField "type" Enum (Maybe TypeSuffix) where
  getField = fmap TypeSuffix . Map.lookup "type" . getField @"attributes"

instance HasField "comment" Enum (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"


data EnumsElement = EnumsProper Enum
                  | EnumsUnused Unused
                  | EnumsComment String
                    deriving Show

data Enums =
       Enums
         { attributes :: Map String String
         , enums      :: [EnumsElement]
         }
       deriving Show

instance HasField "name" Enums (Maybe String) where
  getField = Map.lookup "name" . getField @"attributes"

instance HasField "type" Enums (Maybe String) where
  getField = Map.lookup "type" . getField @"attributes"

instance HasField "start" Enums (Maybe Integer) where
  getField = fmap Integer . Map.lookup "start" . getField @"attributes"

instance HasField "end" Enums (Maybe Integer) where
  getField = fmap Integer . Map.lookup "end" . getField @"attributes"

instance HasField "bitwidth" Enums (Maybe Integer) where
  getField = fmap Integer . Map.lookup "bitwidth" . getField @"attributes"

instance HasField "vendor" Enums (Maybe String) where
  getField = Map.lookup "vendor" . getField @"attributes"

instance HasField "comment" Enums (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"



newtype Proto =
          Proto
            { mixed :: NonEmpty Mixed
            }
          deriving Show

data Param =
       Param
         { attributes :: Map String String
         , mixed      :: NonEmpty Mixed
         }
       deriving Show

instance HasField "api" Param (Maybe String) where
  getField = Map.lookup "api" . getField @"attributes"

instance HasField "len" Param (Maybe String) where
  getField = Map.lookup "len" . getField @"attributes"

instance HasField "altlen" Param (Maybe String) where
  getField = Map.lookup "altlen" . getField @"attributes"

instance HasField "externsync" Param (Maybe String) where
  getField = Map.lookup "externsync" . getField @"attributes"

instance HasField "optional" Param (Maybe String) where
  getField = Map.lookup "optional" . getField @"attributes"

instance HasField "selector" Param (Maybe String) where
  getField = Map.lookup "selector" . getField @"attributes"

instance HasField "noautovalidity" Param (Maybe String) where
  getField = Map.lookup "noautovalidity" . getField @"attributes"

instance HasField "objecttype" Param (Maybe String) where
  getField = Map.lookup "objecttype" . getField @"attributes"

instance HasField "validstructs" Param (Maybe String) where
  getField = Map.lookup "validstructs" . getField @"attributes"

instance HasField "stride" Param (Maybe String) where
  getField = Map.lookup "stride" . getField @"attributes"


newtype Alias =
          Alias
            { name :: String
            }
          deriving newtype Show

newtype Description =
          Description
            { text :: String
            }
          deriving newtype Show

newtype ImplicitExternSyncParams =
          ImplicitExternSyncParams
            { params :: [String]
            }
          deriving newtype Show

data Command = CommandAlias
                 { name                     :: String
                 , alias                    :: String
                 , attributes               :: Map String String
                 }
             | CommandProper
                 { attributes               :: Map String String
                 , proto                    :: Proto
                 , params                   :: [Param]
                 , alias_                   :: Maybe Alias
                 , description              :: Maybe Description
                 , implicitexternsyncparams :: Maybe ImplicitExternSyncParams
                 }
               deriving Show

instance HasField "tasks" Command (Maybe String) where
  getField = Map.lookup "tasks" . getField @"attributes"

instance HasField "queues" Command (Maybe String) where
  getField = Map.lookup "queues" . getField @"attributes"

instance HasField "successcodes" Command (Maybe String) where
  getField = Map.lookup "successcodes" . getField @"attributes"

instance HasField "errorcodes" Command (Maybe String) where
  getField = Map.lookup "errorcodes" . getField @"attributes"

instance HasField "renderpass" Command (Maybe String) where
  getField = Map.lookup "renderpass" . getField @"attributes"

instance HasField "videocoding" Command (Maybe String) where
  getField = Map.lookup "videocoding" . getField @"attributes"

instance HasField "cmdbufferlevel" Command (Maybe String) where
  getField = Map.lookup "cmdbufferlevel" . getField @"attributes"

instance HasField "prefix" Command (Maybe String) where
  getField = Map.lookup "prefix" . getField @"attributes"

instance HasField "suffix" Command (Maybe String) where
  getField = Map.lookup "suffix" . getField @"attributes"

instance HasField "api" Command (Maybe String) where
  getField = Map.lookup "api" . getField @"attributes"

instance HasField "comment" Command (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"

data Commands =
       Commands
         { comment  :: Maybe String
         , commands :: [Command]
         }
       deriving Show



data InterfaceElement = InterfaceType
                          { name    :: String
                          , comment :: Maybe String
                          }
                      | InterfaceEnum Enum
                      | InterfaceCommand
                          { name    :: String
                          , comment :: Maybe String
                          }
                        deriving Show

data FeatureInterface = FeatureInterface InterfaceElement
                      | FeatureComment String
                        deriving Show

data FeatureElement = FeatureRequire
                        { attributes :: Map String String
                        , interfaces :: [FeatureInterface]
                        }
                    | FeatureRemove
                        { attributes  :: Map String String
                        , interfaces  :: [FeatureInterface]
                        }
                      deriving Show

instance HasField "profile" FeatureElement (Maybe String) where
  getField = Map.lookup "profile" . getField @"attributes"

instance HasField "extension" FeatureElement (Maybe String) where
  getField = Map.lookup "extension" . getField @"attributes"

instance HasField "comment" FeatureElement (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"

data Feature =
       Feature
         { api        :: String
         , name       :: String
         , number     :: XsdFloat
         , attributes :: Map String String
         , elements   :: [FeatureElement]
         }
       deriving Show

instance HasField "protect" Feature (Maybe String) where
  getField = Map.lookup "protect" . getField @"attributes"

instance HasField "sortorder" Feature (Maybe XsdInteger) where
  getField = fmap XsdInteger . Map.lookup "sortorder" . getField @"attributes"

instance HasField "comment" Feature (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"



data ExtensionInterface = ExtensionInterface InterfaceElement
                        | ExtensionComment String
                          deriving Show

data ExtensionElement = ExtensionRequire
                          { attributes    :: Map String String
                          , interfaces    :: [ExtensionInterface]
                          }
                      | ExtensionRemove
                          { attributes    :: Map String String
                          , interfaces    :: [ExtensionInterface]
                          }
                        deriving Show

instance HasField "api" ExtensionElement (Maybe String) where
  getField = Map.lookup "api" . getField @"attributes"

instance HasField "profile" ExtensionElement (Maybe String) where
  getField = Map.lookup "profile" . getField @"attributes"

instance HasField "extension" ExtensionElement (Maybe String) where
  getField = Map.lookup "extension" . getField @"attributes"

instance HasField "feature" ExtensionElement (Maybe String) where
  getField = Map.lookup "feature" . getField @"attributes"

instance HasField "comment" ExtensionElement (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"

data Extension =
       Extension
         { name         :: String
         , attributes   :: Map String String
         , elements     :: [ExtensionElement]
         }
       deriving Show

instance HasField "number" Extension (Maybe Integer) where
  getField = fmap Integer . Map.lookup "number" . getField @"attributes"

instance HasField "sortorder" Extension (Maybe XsdInteger) where
  getField = fmap XsdInteger . Map.lookup "sortorder" . getField @"attributes"

instance HasField "protect" Extension (Maybe String) where
  getField = Map.lookup "protect" . getField @"attributes"

instance HasField "platform" Extension (Maybe String) where
  getField = Map.lookup "platform" . getField @"attributes"

instance HasField "author" Extension (Maybe String) where
  getField = Map.lookup "author" . getField @"attributes"

instance HasField "contact" Extension (Maybe String) where
  getField = Map.lookup "contact" . getField @"attributes"

instance HasField "type" Extension (Maybe String) where
  getField = Map.lookup "type" . getField @"attributes"

instance HasField "requires" Extension (Maybe String) where
  getField = Map.lookup "requires" . getField @"attributes"

instance HasField "requiresCore" Extension (Maybe String) where
  getField = Map.lookup "requiresCore" . getField @"attributes"

instance HasField "supported" Extension (Maybe StringGroup) where
  getField = fmap StringGroup . Map.lookup "supported" . getField @"attributes"

instance HasField "promotedto" Extension (Maybe String) where
  getField = Map.lookup "promotedto" . getField @"attributes"

instance HasField "deprecatedby" Extension (Maybe String) where
  getField = Map.lookup "deprecatedby" . getField @"attributes"

instance HasField "obsoletedby" Extension (Maybe String) where
  getField = Map.lookup "obsoletedby" . getField @"attributes"

instance HasField "provisional" Extension (Maybe String) where
  getField = Map.lookup "provisional" . getField @"attributes"

instance HasField "specialuse" Extension (Maybe String) where
  getField = Map.lookup "specialuse" . getField @"attributes"

instance HasField "comment" Extension (Maybe String) where
  getField = Map.lookup "comment" . getField @"attributes"

data Extensions =
       Extensions
         { comment    :: Maybe String
         , extensions :: [Extension]
         }
       deriving Show



data Component =
       Component
         { name          :: String
         , bits          :: String
         , numericFormat :: String
         , planeIndex    :: Maybe String
         }
       deriving Show

data Plane =
       Plane
         { index         :: String
         , widthDivisor  :: String
         , heightDivisor :: String
         , compatible    :: String
         }
       deriving Show

newtype SpirvImageFormat =
          SpirvImageFormat
            { name :: String
            }
          deriving newtype Show

data Format =
       Format
         { name              :: String
         , class_            :: String
         , blockSize         :: String
         , texelsPerBlock    :: String
         , attributes        :: Map String String
         , components        :: NonEmpty Component
         , planes            :: [Plane]
         , spirvImageFormats :: [SpirvImageFormat]
         }
       deriving Show

instance HasField "blockExtent" Format (Maybe String) where
  getField = Map.lookup "blockExtent" . getField @"attributes"

instance HasField "packed" Format (Maybe String) where
  getField = Map.lookup "packed" . getField @"attributes"

instance HasField "compressed" Format (Maybe String) where
  getField = Map.lookup "compressed" . getField @"attributes"

instance HasField "chroma" Format (Maybe String) where
  getField = Map.lookup "chroma" . getField @"attributes"

data Formats =
       Formats
         { formats :: [Format]
         }
       deriving Show



data Enable = EnableVersion
                { version   :: String
                }
            | EnableExtension
                { extension :: String
                }
            | EnableFeature
                { struct    :: String
                , feature   :: String
                , requires  :: String
                , alias     :: Maybe String
                }
            | EnableProperty
                { property  :: String
                , member    :: String
                , value     :: String
                , requires_ :: Maybe String
                }
              deriving Show

data SpirvExtension =
       SpirvExtension
         { name    :: String
         , enables :: NonEmpty Enable
         }
       deriving Show

data SpirvExtensions =
       SpirvExtensions
         { comment      :: Maybe String
         , capabilities :: [SpirvExtension]
         }
       deriving Show



data SpirvCapability =
       SpirvCapability
         { name    :: String
         , enables :: NonEmpty Enable
         }
       deriving Show

data SpirvCapabilities =
       SpirvCapabilities
         { comment      :: Maybe String
         , capabilities :: [SpirvCapability]
         }
       deriving Show



data RegEntry = RegComment String
              | RegPlatforms Platforms
              | RegTags Tags
              | RegTypes Types
              | RegEnums Enums
              | RegCommands Commands
              | RegFeature Feature
              | RegExtensions Extensions
              | RegFormats Formats
              | RegSpirvExtensions SpirvExtensions
              | RegSpirvCapabilities SpirvCapabilities
                deriving Show

newtype Registry = Registry [RegEntry]
                   deriving newtype Show
