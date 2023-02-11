{-# LANGUAGE DataKinds
           , DuplicateRecordFields
           , NoFieldSelectors
           , TypeApplications #-}

module Autogen.Mixer.Types
  ( Distillery.Value (..)
  , Distillery.Platform (..)
  , module Autogen.Mixer.Types
  ) where

import qualified Autogen.Distillery.Types as Distillery

import           Data.Function
import           Data.List.NonEmpty (NonEmpty)
import           Data.Set (Set)
import           Data.Map (Map)
import qualified Data.Map as Map
import           GHC.Records
import           Prelude hiding (Enum)



data FeatureTag =
       FeatureTag
         { number :: Double
         , name   :: String
         }
       deriving Show

instance Eq FeatureTag where
  (==) = (==) `on` getField @"number"

instance Ord FeatureTag where
  compare = compare `on` getField @"number"

newtype ExtensionTag =
          ExtensionTag
            { requires :: Set String
            }
          deriving Show

instance Semigroup ExtensionTag where
  ExtensionTag x <> ExtensionTag y = ExtensionTag $ x <> y



data MentionTag =
       MentionTag
         { features   :: Map String FeatureTag
         , extensions :: Map String ExtensionTag
         }
       deriving Show

instance Semigroup MentionTag where
  MentionTag a c <> MentionTag b d =
    MentionTag (Map.unionWith min a b) (Map.unionWith (<>) c d)

instance Monoid MentionTag where
  mempty = MentionTag Map.empty Map.empty

data MentionEnum =
       MentionEnum
         { name    :: String
         , value   :: OrAlias (Distillery.Value Integer)
         , protect :: Maybe String
         , comment :: Maybe String
         , tag     :: MentionTag
         }
       deriving Show

data Mentions =
       Mentions
         { enums       :: Map String [MentionEnum]
         , enumerators :: Map String (Map String (Distillery.Value Integer))
         , types       :: Map String MentionTag
         , commands    :: Map String MentionTag
         }
       deriving Show



data Category = Include
              | Protected
              | Define
              | Basic
              | Const
              | Enumerated
              | FunPointer
              | Handle
              | Struct
              | Union
              | Function
                deriving (Show, Eq, Ord)

data Type = BareType String
          | HscType String
          | VkType Category String
          | Type1 String Type
            deriving Show



data OrAlias a = Normal a
               | Alias String
                 deriving Show

data Enumerator =
       Enumerator
         { comment :: Maybe String
         , name    :: String
         , flavor  :: OrAlias (Distillery.Value Integer)
         , tags    :: MentionTag
         }
       deriving Show

data EnumType = Int
              | Custom Type
                deriving Show

data Enum =
       Enum
         { comment :: Maybe String
         , type_   :: EnumType
         , flavor  :: OrAlias [Enumerator]
         , tags    :: MentionTag
         }
       deriving Show



data CommandType = Imported (Maybe String)
                 | Extended
                   deriving Show

data Require = RequireType
                 { name     :: String
                 , category :: Category
                 }
             | RequireEnumerator
                 { extends  :: String
                 , name     :: String
                 }
             | RequireEnumeratorInplace
                 { name     :: String
                 , value    :: Distillery.Value Integer
                 , alias    :: Maybe String
                 , comment  :: Maybe String
                 }
             | RequireHandle
                 { name     :: String
                 , alias    :: Maybe String
                 }
             | RequireStruct
                 { name     :: String
                 , alias    :: Maybe String
                 }
             | RequireUnion
                 { name     :: String
                 , alias    :: Maybe String
                 }
             | RequireCommand
                 { name     :: String
                 , type_    :: CommandType
                 }
               deriving Show

data Block =
       Block
         { comment  :: Maybe String
         , requires :: [Require]
         , tags     :: MentionTag
         }
       deriving Show

data TaggedFeature =
       TaggedFeature
         { api     :: String
         , tag     :: FeatureTag
         , feature :: Feature
         }
       deriving Show

data Feature =
       Feature
         { api     :: String
         , number  :: Double
         , name    :: String
         , protect :: Maybe String
         , comment :: Maybe String
         , blocks  :: [Block]
         }
       deriving Show



data Protect = NoProtect
             | Protect String
               deriving Show



data BaseFlavor = Opaque
                | Synonym Type
                  deriving Show

data Base =
       Base
         { tags    :: MentionTag
         , flavor  :: BaseFlavor
         }
       deriving Show



data Constant =
       Constant
         { value   :: Distillery.Value Integer
         , alias   :: Maybe String
         , comment :: Maybe String
         }
       deriving Show



data FuncPointer = VoidPointer
                 | FuncPointer
                     { return :: Type
                     , fields :: [Field]
                     }
                   deriving Show



type Handle = OrAlias RealHandle

data RealHandle = DispatchableHandle
                | NonDispatchableHandle
                  deriving Show



data Field =
       Field
         { name    :: String
         , type_   :: Type
         , comment :: Maybe String
         }
       deriving Show

data RealStruct =
       RealStruct
         { fields :: NonEmpty Field
         , tags   :: MentionTag
         }
       deriving Show

type Struct = OrAlias RealStruct

data RealUnion =
       RealUnion
         { fields :: NonEmpty Field
         , tags   :: MentionTag
         }
       deriving Show

type Union = OrAlias RealUnion



data Argument =
       Argument
         { name    :: String
         , type_   :: Type
         }
       deriving Show

data Command =
       Command
         { arguments :: [Argument]
         , return    :: Type
         , type_     :: OrAlias CommandType
         , tags      :: MentionTag
         }
       deriving Show


data Extension =
       Extension
         { number       :: Maybe Integer
         , protect      :: Maybe String
         , platform     :: Maybe String
         , author       :: Maybe String
         , contact      :: Maybe String
         , type_        :: Maybe String
         , requires     :: [String]
         , requiresCore :: Maybe Double
         , supported    :: [String]
         , promotedto   :: Maybe String
         , deprecatedby :: Maybe String
         , obsoletedby  :: Maybe String
         , provisional  :: Maybe Bool
         , specialuse   :: [String]
         , blocks       :: [Block]
         }
       deriving Show



data Augments =
       Augments
         { cauterizedStructs :: Set String
         , demotedCommands   :: Set String
         }
       deriving Show



data Mixed =
       Mixed
         { platforms    :: Map String Distillery.Platform
         , protects     :: Map String Protect
         , defines      :: Set String
         , bases        :: Map String Base
         , constants    :: Map String Constant
         , enums        :: Map String Enum
         , funcpointers :: Map String FuncPointer
         , handles      :: Map String Handle
         , structs      :: Map String Struct
         , unions       :: Map String Union
         , commands     :: Map String Command
         , features     :: [Feature]
         , extensions   :: Map String Extension
         }
       deriving Show
