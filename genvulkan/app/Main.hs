module Main where

import           Autogen

import           System.Environment



main :: IO ()
main = do
  args <- getArgs
  case args of
    []     -> fail "Expecting a single command line argument: Vulkan XML file location"
    path:_ -> do
      autogen path
