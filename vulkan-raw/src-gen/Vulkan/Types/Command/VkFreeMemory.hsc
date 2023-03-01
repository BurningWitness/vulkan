{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkFreeMemory where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkFreeMemory =
          VkDevice -- ^ device
       -> VkDeviceMemory -- ^ memory
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunFreeMemory :: VkFun VkFreeMemory
vkFunFreeMemory = VkFun (Ptr ("vkFreeMemory\0"##))

foreign import CALLCV "vulkan/vulkan.h vkFreeMemory"
  vkFreeMemory
    :: VkFreeMemory

foreign import CALLCV unsafe "vulkan/vulkan.h vkFreeMemory"
  vkFreeMemoryUnsafe
    :: VkFreeMemory