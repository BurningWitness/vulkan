{-# LANGUAGE DuplicateRecordFields
           , NoFieldSelectors #-}

module Autogen.Cabal.Types where



data Extension =
       Extension
         { name  :: String
         , macro :: String 
         }
       deriving (Show, Eq, Ord)

data Body =
       Body
         { exposed :: [String]
         , other   :: [String]
         }
       deriving Show


data Template =
       Template
         { header :: String
         , middle :: String
         , footer :: String
         }
       deriving Show
