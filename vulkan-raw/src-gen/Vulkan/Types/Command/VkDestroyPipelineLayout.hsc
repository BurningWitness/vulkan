{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyPipelineLayout where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyPipelineLayout =
          VkDevice -- ^ device
       -> VkPipelineLayout -- ^ pipelineLayout
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyPipelineLayout :: VkFun VkDestroyPipelineLayout
vkFunDestroyPipelineLayout = VkFun (Ptr ("vkDestroyPipelineLayout\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyPipelineLayout"
  vkDestroyPipelineLayout
    :: VkDestroyPipelineLayout

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyPipelineLayout"
  vkDestroyPipelineLayoutUnsafe
    :: VkDestroyPipelineLayout