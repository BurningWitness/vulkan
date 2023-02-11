{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyPipelineCache where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyPipelineCache =
          VkDevice -- ^ device
       -> VkPipelineCache -- ^ pipelineCache
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyPipelineCache :: VkFun VkDestroyPipelineCache
vkFunDestroyPipelineCache = VkFun (Ptr ("vkDestroyPipelineCache\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyPipelineCache"
  vkDestroyPipelineCache
    :: VkDestroyPipelineCache

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyPipelineCache"
  vkDestroyPipelineCacheUnsafe
    :: VkDestroyPipelineCache