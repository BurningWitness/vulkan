{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyDescriptorPool where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyDescriptorPool =
          VkDevice -- ^ device
       -> VkDescriptorPool -- ^ descriptorPool
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyDescriptorPool :: VkFun VkDestroyDescriptorPool
vkFunDestroyDescriptorPool = VkFun (Ptr ("vkDestroyDescriptorPool\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyDescriptorPool"
  vkDestroyDescriptorPool
    :: VkDestroyDescriptorPool

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyDescriptorPool"
  vkDestroyDescriptorPoolUnsafe
    :: VkDestroyDescriptorPool