{-# LANGUAGE DuplicateRecordFields
           , NoFieldSelectors
           , RecordWildCards #-}

module Autogen.Packager.Types where

import           Data.List.NonEmpty (NonEmpty)



data FlagStage = FlagHsc
               | FlagCPP
                 deriving Show

data Flags = Flags FlagStage String
             deriving Show

data Pragma = Pragma String
            | GatedPragma Flags String
            | HaddockPragma String
              deriving Show

data Export = Export String
            | ExportOpen String
            | ExportPattern String
            | ExportComment String
            | ExportFlag Flags [Export]
              deriving Show

newtype Include = Include String
                  deriving Show

newtype Import = Import String
                 deriving Show

data Safe = Safe
          | Unsafe
            deriving Show

data Field =
       Field
         { name    :: String
         , type_   :: String
         , comment :: Maybe String
         }
       deriving Show

data Arg =
       Arg
         { type_   :: String
         , comment :: Maybe String
         }
       deriving Show

data StructFlavor = Struct
                  | Union
                    deriving Show

data Declaration = EmptyDatatype
                     { name     :: String
                     , cname    :: Maybe String
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | Datatype
                     { name     :: String
                     , cname    :: Maybe String
                     , fields   :: [Field]
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }

                 | TypeSynonym
                     { name     :: String
                     , args     :: NonEmpty Arg
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | Func
                     { name     :: String
                     , type_    :: NonEmpty String
                     , value    :: String
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | Pattern
                     { name     :: String
                     , type_    :: NonEmpty String
                     , value    :: String
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | PatternFunc
                     { name     :: String
                     , funcname :: String
                     , type_    :: NonEmpty String
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | PatternCString
                     { name     :: String
                     , type_    :: NonEmpty String
                     , string   :: String
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | ForeignImport
                     { name     :: String
                     , args     :: NonEmpty Arg
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | FunctionSynonym
                     { name     :: String
                     , synonym  :: String
                     , args     :: NonEmpty Arg
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                 | StorableInstance
                     { name       :: String
                     , fieldnames :: [String]
                     , flavor     :: StructFlavor
                     , comment    :: Maybe String
                     , flags      :: Maybe Flags
                     }
                 | OffsetInstance
                     { name      :: String
                     , fieldname :: String
                     , offset    :: String
                     , flavor    :: StructFlavor
                     , comment   :: Maybe String
                     , flags     :: Maybe Flags
                     }
                 | OffsetSynonymInstance
                     { name      :: String
                     , fieldname :: String
                     , synonym   :: String
                     , comment   :: Maybe String
                     , flags     :: Maybe Flags
                     }
                 | FieldSynonymInstance
                     { name      :: String
                     , fieldname :: String
                     , synonym   :: String
                     , syntype   :: String
                     , comment   :: Maybe String
                     , flags     :: Maybe Flags
                     }
                 | RawDeclaration
                     { decl     :: String
                     , comment  :: Maybe String
                     , flags    :: Maybe Flags
                     }
                   deriving Show

data Ext = Hsc
         | Hs
           deriving Show

newtype Name = Name (NonEmpty String)
               deriving (Show, Eq, Ord)

data Module =
       Module
         { ext      :: Ext
         , pragmas  :: [Pragma]
         , name     :: Name
         , flags    :: Maybe Flags
         , exports  :: [Export]
         , includes :: [Include]
         , imports  :: [Import]
         , decls    :: [Declaration]
         }
       deriving Show
