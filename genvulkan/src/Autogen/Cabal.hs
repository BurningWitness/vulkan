{-# LANGUAGE DataKinds
           , NoFieldSelectors
           , TypeApplications #-}

module Autogen.Cabal where

import           Autogen.Cabal.Types
import           Autogen.Distillery.Condenser

import           Control.Applicative
import           Data.Char
import qualified Data.List as List
import           Data.Map (Map)
import qualified Data.Map as Map
import           GHC.Records
import           Numeric
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



dotdash :: Char -> Char
dotdash '.' = '-'
dotdash c   = c

dotunder :: Char -> Char
dotunder '.' = '_'
dotunder c   = c

underdash :: Char -> Char
underdash '_' = '-'
underdash c   = c

fillPlatformFlag :: Platform -> String
fillPlatformFlag (Platform "provisional" _ comment) = fillFlag "beta" comment
fillPlatformFlag (Platform name          _ comment) =
  fillFlag ("platform-" <> fmap underdash name) $ "Enable declarations for " <> comment



featFlag :: String -> Double -> String
featFlag "vulkan" num = "core-"    <> fmap dotdash (showFFloat Nothing num "")
featFlag api      num = api <> "-" <> fmap dotdash (showFFloat Nothing num "")

ffiFlag :: String -> Double -> String
ffiFlag "vulkan" num = "CORE_"          <> fmap dotunder (showFFloat Nothing num "")
ffiFlag api      num = fmap toUpper api <> "_" <> fmap dotunder (showFFloat Nothing num "")

fillClassFlag :: Class -> Maybe String
fillClassFlag (Feat "vulkan" 1.0) = Nothing
fillClassFlag (Feat api      num) =
  Just $
    mconcat
      [ if api == "vulkan"
          then fillFlag' (featFlag api num) ("Expose core version " <> showFFloat Nothing num "") "True"
          else fillFlag (featFlag api num) $ "Expose core version " <> showFFloat Nothing num ""
      , "\n"
      , "\n"
      , fillFlag ("ffi-" <> featFlag api num) $
          "Expose FFI functions for core version " <> showFFloat Nothing num ""
      ]

fillClassFlag (Ext name) = Just . fillFlag name $ "Expose extension " <> name

fillFlag :: String -> String -> String
fillFlag name comment = fillFlag' name comment "False"

fillFlag' :: String -> String -> String -> String
fillFlag' name comment val =
  mconcat
    [ "flag ", name, "\n"
    , "  description: ", comment, "\n"
    , "  default: ", val
    ]



fillFlags :: [Platform] -> Map Class Body -> String
fillFlags platforms sorted =
  List.intercalate "\n\n" $ fmap fillPlatformFlag platforms
                         <> foldMap (maybe [] pure) (fillClassFlag <$> Map.keys sorted)


fillPlatforms :: [Platform] -> String
fillPlatforms platforms =
  List.intercalate "\n\n" .
    (\f -> foldr f [] platforms) $ \platform ->
      (:) $ case platform of
              Platform "provisional" macro _ ->
                   "    if flag (beta)\n"
                <> "      cpp-options: -D" <> macro

              Platform name          macro _ ->
                   "    if flag (platform-" <> fmap underdash name <> ")\n"
                <> "      cpp-options: -D" <> macro

fillFFIs :: Map Class Body -> String
fillFFIs sorted =
  List.intercalate "\n\n" $
    (\f -> Map.foldrWithKey f [] sorted) $ \c _ acc ->
      (<> acc) $ case c of
                   Feat "vulkan" 1.0 -> []
                   Feat api      num -> [ mconcat
                                            [ "    if flag (ffi-", featFlag api num, ")\n"
                                            , "      cpp-options: -D", ffiFlag api num
                                            ]
                                        ]
                   Ext _             -> []

extendBaseOther :: [String] -> [String]
extendBaseOther =
  mappend
    [ "Vulkan.Types.Command.VkGetDeviceFunPtr"
    , "Vulkan.Types.Command.VkGetInstanceFunPtr"
    , "Vulkan.Types.Constant"
    , "Vulkan.Types.VkFun"
    ]

fillBulk :: Map Class Body -> String
fillBulk sorted =
  case Map.lookup (Feat "vulkan" 1.0) sorted of
    Nothing      -> fail "Could not find core 1.0 during template write"
    Just essence -> 
      mconcat
        [ case getField @"exposed" essence of
            []      -> ""
            exposed ->
              mconcat
                [ "    exposed-modules:\n"
                , flip foldMap exposed $ \ex ->
                    "      " <> ex <> "\n"
                , "\n"
                ]
        , case extendBaseOther $ getField @"other" essence of
            []    -> ""
            other ->
              mconcat
                [ "    other-modules:\n"
                , flip foldMap other $ \ot ->
                    "      " <> ot <> "\n"
                , "\n"
                ]
        , rest $ Map.delete (Feat "vulkan" 1.0) sorted
        ]
  where
    rest :: Map Class Body -> String
    rest =
      (\f -> Map.foldrWithKey f []) $ \c body acc ->
        case c of
          Feat api num ->
            mconcat
              [ "    if flag (", featFlag api num, ")\n"
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

          Ext ext ->
            mconcat
              [ "    if flag (", ext, ")\n"
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



fillTemplate :: Template -> [Platform] -> Map Class Body -> String
fillTemplate template platforms sorted =
  mconcat
    [ getField @"header" template
    , fillFlags platforms sorted
    , "\n"
    , getField @"middle" template
    , fillPlatforms platforms
    , "\n"
    , "\n"
    , fillFFIs sorted
    , "\n"
    , "\n"
    , fillBulk sorted
    , "\n"
    , getField @"footer" template
    ]
