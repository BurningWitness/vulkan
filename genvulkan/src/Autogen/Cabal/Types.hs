{-# LANGUAGE DuplicateRecordFields
           , NoFieldSelectors #-}

module Autogen.Cabal.Types where



data Platform =
       Platform
         { name    :: String
         , macro   :: String
         , comment :: String
         }
       deriving Show

data Class = Feat String Double
           | Ext String
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
