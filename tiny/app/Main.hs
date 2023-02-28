module Main where

import           Tiny

import           Foreign.Ptr



main :: IO ()
main = do
  if False
    then do
      res <- vkCreateFence nullPtr nullPtr nullPtr nullPtr
      print res
    else do
      addr <- vkGetInstanceProcAddr nullPtr vkFunGetInstanceProcAddr
      print addr
