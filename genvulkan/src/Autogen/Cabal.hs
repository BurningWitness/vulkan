{-# LANGUAGE DataKinds
           , NoFieldSelectors
           , TypeApplications #-}

module Autogen.Cabal where

import           Autogen.Cabal.Types
import           Autogen.Distillery.Condenser

import           Control.Applicative
import qualified Data.List as List
import           Data.Maybe
import           Data.Map (Map)
import qualified Data.Map as Map
import           GHC.Records
import           Text.ParserCombinators.ReadP



lineP :: ReadP String
lineP = do
  line <- munch (/= '\n')
  newl <- char '\n'
  return $ line <> [newl]

templateP :: ReadP Template
templateP = do
  let chomp str =
            do _ <- string str
               _ <- char '\n'
               return ""
        <|> do line <- lineP
               rest <- chomp str
               return $ line <> rest

  Template
    <$> chomp "--[FLAGS]--"
    <*> chomp "--[BULK]--"
    <*> munch1 (const True)



readTemplate :: FilePath -> IO (Either String Template)
readTemplate path = do
  rawt <- readFile path
  return $ case runReadS (readP_to_S templateP) rawt of
             Nothing   -> Left "Could not read template file"
             Just temp -> Right temp



shapeFlag :: Extension -> Extension
shapeFlag (Extension flag macro)
  | flag == "provisional" = Extension "beta" macro
  | otherwise             = let nounderscore '_' = '-'
                                nounderscore c   = c
                            in Extension ("platform-" <> fmap nounderscore flag) macro

fillFlag :: Extension -> String
fillFlag (Extension flag macro) =
  mconcat
    [ "flag ", flag, "\n"
    , "  description: Enable extensions protected by ", macro, "\n"
    , "  default: False"
    ]

fillFlags :: Map (Maybe Extension) Body -> String
fillFlags sorted =
  List.intercalate "\n\n" $
    fillFlag . shapeFlag <$> catMaybes (Map.keys sorted)



fillBulk :: Map (Maybe Extension) Body -> String
fillBulk sorted =
  (\f -> Map.foldrWithKey f [] sorted) $ \mayExt body acc ->
    case mayExt of
      Nothing ->
        mconcat
          [ case getField @"exposed" body of
              []      -> ""
              exposed ->
                mconcat
                  [ "    exposed-modules:\n"
                  , flip foldMap exposed $ \ex ->
                      "      " <> ex <> "\n"
                  , "\n"
                  ]
          , case getField @"other" body of
              []    -> ""
              other ->
                mconcat
                  [ "    other-modules:\n"
                  , flip foldMap other $ \ot ->
                      "      " <> ot <> "\n"
                  , "\n"
                  ]
          , acc
          ]

      Just ext' ->
        let ext = shapeFlag ext'
        in mconcat
             [ "    if flag (", getField @"name" ext, ")\n"
             , "      cpp-options: -D", getField @"macro" ext, "\n"
             , case getField @"exposed" body of
                 []      -> ""
                 exposed ->
                   mconcat
                     [ "      exposed-modules:\n"
                     , flip foldMap exposed $ \ex ->
                         "        " <> ex <> "\n"
                     , "\n"
                     ]
             , case getField @"other" body of
                 []    -> ""
                 other ->
                   mconcat
                     [ "      other-modules:\n"
                     , flip foldMap other $ \ot ->
                         "        " <> ot <> "\n"
                     , "\n"
                     ]
             , acc
             ]




fillTemplate :: Template -> Map (Maybe Extension) Body -> String
fillTemplate template sorted =
  mconcat
    [ getField @"header" template
    , fillFlags sorted
    , "\n"
    , getField @"middle" template
    , fillBulk sorted
    , "\n"
    , getField @"footer" template
    ]
