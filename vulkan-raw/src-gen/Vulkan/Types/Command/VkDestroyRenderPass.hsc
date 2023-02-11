{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyRenderPass where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyRenderPass =
          VkDevice -- ^ device
       -> VkRenderPass -- ^ renderPass
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyRenderPass :: VkFun VkDestroyRenderPass
vkFunDestroyRenderPass = VkFun (Ptr ("vkDestroyRenderPass\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyRenderPass"
  vkDestroyRenderPass
    :: VkDestroyRenderPass

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyRenderPass"
  vkDestroyRenderPassUnsafe
    :: VkDestroyRenderPass