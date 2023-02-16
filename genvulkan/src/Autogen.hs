{-# LANGUAGE DataKinds
           , TypeApplications #-}

module Autogen where

import           Autogen.Cabal
import           Autogen.Distillery
import           Autogen.Mixer
import           Autogen.Packager
import           Autogen.Parser
import           Paths_genvulkan

import           Control.Monad
import           Data.Foldable
import qualified Data.Set as Set
import           System.Directory
import           System.Exit
import           System.FilePath
import           Text.XML.HaXml.Parse (xmlParse')



augments :: Augments
augments =
  Augments
    { cauterizedStructs = Set.fromList
                            [ "VkAccelerationStructureInstanceKHR"
                            , "VkAccelerationStructureInstanceNV"
                            , "VkAccelerationStructureSRTMotionInstanceNV"
                            , "VkAccelerationStructureMatrixMotionInstanceNV"
                            ]
    , demotedCommands   = Set.fromList
                            [ "vkCmdSetBlendConstants"
                            ]
    }



autogen :: FilePath -> IO ()
autogen xmlPath = do
  dir <- getDataDir

  let vkdir     = dir </> ".." </> "vulkan-raw"
  let cabalfile = vkdir </> "vulkan-raw" <.> "cabal"
  let gendir    = vkdir </> "src-gen"

  putStrLn $ "Assuming " <> vkdir <> " is the vulkan directory"

  exists <- doesDirectoryExist gendir
  when exists $ do
    putStrLn "Cleaning the generation directory"
    removeDirectoryRecursive gendir

  createDirectory gendir

  raw <- readFile xmlPath
  putStrLn $ "Opened " <> xmlPath

  doc <- case xmlParse' "vk" raw of
           Left err  -> die $ "XML parsing issue:\n" <> err
           Right doc -> return doc

  putStrLn "Parsed the raw XML"

  reg <- case parseDoc doc of
           Left err  -> die $ "Parser issue:\n" <> err
           Right reg -> return reg

  putStrLn "Parsed the document"

  dist <- case distill reg of
            Left errs  -> die $ "Distillery issue:\n" <> showErrors errs
            Right dist -> return dist

  putStrLn "Distilled"

  (mixd, plats, bulks) <- case mix dist of
                            Left err    -> die $ "Mixer issue:\n" <> err
                            Right mixed -> return mixed

  putStrLn "Mixed"

  pack <- case package mixd augments of
            Left err   -> die $ "Packager issue:\n" <> err
            Right pack -> return pack

  classes <- case cabalExtensions =<< purgeModuleLists bulks of
               Left err -> die $ "Cabal file forming issue: " <> err
               Right cs -> return cs

  putStrLn "Packaged"
{-
  deps <- case cabalDependencies mixd sdeps of
            Left err   -> die $ "Cabal dependency resolution issue:\n" <> err
            Right deps -> return deps
-}
  Right temp <- readTemplate "vulkan-raw.template"

  putStrLn "Read the template"

  writeModules gendir pack

  for_ pack $ \mdl ->
    writeFile (modulePath gendir mdl) $ composeModule mdl

  putStrLn $ "Writing Cabal file " <> cabalfile

  writeFile cabalfile $ fillTemplate temp plats classes

  putStrLn "Done"
