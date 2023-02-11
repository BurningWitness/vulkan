{-# LANGUAGE DuplicateRecordFields
           , NoFieldSelectors #-}

module Autogen.Distillery.Types where

import           Data.List.NonEmpty (NonEmpty)
import           Data.Map (Map)
import           Prelude hiding (Enum)



data ArrayLength = ArrayLength Int
                 | ArrayEnum String
                   deriving Show

data Type = Void
          | Char
          | Float
          | Double
          | Int8
          | Int16
          | Int32
          | Int64
          | UInt8
          | UInt16
          | UInt32
          | UInt64
          | Size
          | Int
          | VkType String
          | Bits Int Type
          | Array (NonEmpty ArrayLength) Type
          | Ptr Type
          | Const Type
          | Structure Type
            deriving Show

data Value i = Fractional Double
             | Integral i
             | String String
               deriving Show

instance Functor Value where
  fmap f (Integral i)   = Integral $ f i
  fmap _ (Fractional f) = Fractional f
  fmap _ (String s)     = String s



data Platform =
       Platform
         { protect :: String
         , comment :: String
         }
       deriving Show

data Tag =
       Tag
         { author  :: String
         , contact :: String
         }
       deriving Show



data Include = Include String
             | PlatformInclude
               deriving Show

data Define =
       Define
         { require :: Maybe String
         , type_   :: Maybe String
         }
       deriving Show

data Protected = NotProtected
               | Protected
                   { requires :: String
                   }
                 deriving Show

data Base = Opaque
          | Synonym
              { to :: Type
              }
            deriving Show

data FuncPointer = VoidPointer
                     { return :: Type
                     }
                 | FuncPointer
                     { return :: Type
                     , fields :: [Field]
                     }
                   deriving Show

data EnumStub = EnumStub
              | EnumStubAlias
                  { alias :: String
                  }
                deriving Show

data BitmaskStub = BitmaskStub
                     { type_ :: String
                     }
                 | BitmaskStubAlias
                     { alias :: String
                     }
                   deriving Show

data Handle = Handle
            | NonDispatchableHandle
            | HandleAlias
                { alias :: String
                }
              deriving Show

data Field =
       Field
         { name    :: String
         , type_   :: Type
         , comment :: Maybe String
         }
       deriving Show

data Struct = Struct
                { fields :: NonEmpty Field
                }
            | StructAlias
                { alias :: String
                }
              deriving Show

data Union = Union
               { fields :: NonEmpty Field
               }
           | UnionAlias
               { alias :: String
               }
             deriving Show

data Types =
       Types
         { includes     :: Map String Include
         , protects     :: Map String Protected
         , defines      :: Map String Define
         , bases        :: Map String Base
         , enums        :: Map String EnumStub
         , bitmasks     :: Map String BitmaskStub
         , funcpointers :: Map String FuncPointer
         , handles      :: Map String Handle
         , structs      :: Map String Struct
         , unions       :: Map String Union
         }
       deriving Show



data Constant = Constant
                  { type_   :: Type
                  , value   :: Value Integer
                  , comment :: Maybe String
                  }
              | ConstantAlias
                  { alias   :: String
                  , comment :: Maybe String
                  }
                deriving Show



data Enumerator = Enumerator
                    { name    :: String
                    , value   :: Value Integer
                    , comment :: Maybe String
                    }
                | EnumeratorAlias
                    { name    :: String
                    , alias   :: String
                    , comment :: Maybe String
                    }
                  deriving Show

data Enum =
       Enum
         { comment :: Maybe String
         , enums   :: [Enumerator]
         }
       deriving Show

data Bit = Bit
             { name    :: String
             , bitpos  :: Integer
             , comment :: Maybe String
             }
         | BitEnumerator
             { name    :: String
             , value   :: Value Integer
             , comment :: Maybe String
             }
         | BitAlias
             { name    :: String
             , alias   :: String
             , comment :: Maybe String
             }
           deriving Show

data Bitmask =
       Bitmask
         { comment :: Maybe String
         , width   :: Maybe Integer
         , bits    :: [Bit]
         }
       deriving Show



data Argument =
       Argument
         { name  :: String
         , type_ :: Type
         }
       deriving Show

data Command = CommandAlias
                 { alias :: String
                 }
             | Command
                 { arguments :: [Argument]
                 , return    :: Type
                 }
               deriving Show



data Direction = Minus
                 deriving Show

data Require = RequireType
                 { name      :: String
                 , comment   :: Maybe String
                 }
             | RequireEnum
                 { name      :: String
                 , comment   :: Maybe String
                 }
             | RequireEnumerator
                 { name      :: String
                 , value     :: Value Integer
                 , extends_  :: Maybe String
                 , protect   :: Maybe String
                 , comment   :: Maybe String
                 }
             | RequireAlias
                 { name      :: String
                 , alias     :: String
                 , extends_  :: Maybe String
                 , protect   :: Maybe String
                 , comment   :: Maybe String
                 }
             | RequireOffset
                 { name      :: String
                 , offset    :: Integer
                 , extends   :: String
                 , extnumber :: Maybe Integer
                 , dir       :: Maybe Direction
                 , protect   :: Maybe String
                 , comment   :: Maybe String
                 }
             | RequireBit
                 { name      :: String
                 , bitpos    :: Integer
                 , extends_  :: Maybe String
                 , protect   :: Maybe String
                 , comment   :: Maybe String
                 }
             | RequireCommand
                 { name      :: String
                 , comment   :: Maybe String
                 }
               deriving Show

data Remove = RemoveType
                { name :: String
                }
            | RemoveEnum
                { name :: String
                }
            | RemoveCommand
                { name :: String
                }
              deriving Show

data FeatureBlock = RequireFeatureBlock
                      { profiles   :: [String]
                      , extensions :: [String]
                      , comment    :: Maybe String
                      , requires   :: [Require]
                      }
                  | RemoveFeatureBlock
                      { comment  :: Maybe String
                      , removes  :: [Remove]
                      }
                    deriving Show

data Feature =
       Feature
         { number  :: Double
         , name    :: String
         , protect :: Maybe String
         , comment :: Maybe String
         , blocks  :: [FeatureBlock]
         }
       deriving Show



data ExtensionBlock = RequireExtensionBlock
                        { api        :: Maybe String
                        , profiles   :: [String]
                        , extensions :: [String]
                        , features   :: [String]
                        , comment    :: Maybe String
                        , requires   :: [Require]
                        }
                    | RemoveExtensionBlock
                        { comment  :: Maybe String
                        , removes  :: [Remove]
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
         , blocks       :: [ExtensionBlock]
         }
       deriving Show



data Fractions =
       Fractions
         { platforms  :: Map String Platform
         , tags       :: Map String Tag
         , types      :: Types
         , constants  :: Map String Constant
         , enums      :: Map String Enum
         , bitmasks   :: Map String Bitmask
         , commands   :: Map String Command
         , features   :: Map String [Feature]
         , extensions :: Map String Extension
         }
       deriving Show
