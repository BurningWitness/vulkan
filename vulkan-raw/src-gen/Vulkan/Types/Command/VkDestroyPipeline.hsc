{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyPipeline where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyPipeline =
          VkDevice -- ^ device
       -> VkPipeline -- ^ pipeline
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyPipeline :: VkFun VkDestroyPipeline
vkFunDestroyPipeline = VkFun (Ptr ("vkDestroyPipeline\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyPipeline"
  vkDestroyPipeline
    :: VkDestroyPipeline

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyPipeline"
  vkDestroyPipelineUnsafe
    :: VkDestroyPipeline