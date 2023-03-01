{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkAllocateMemory where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkMemoryAllocateInfo
import Vulkan.Types.VkFun



type VkAllocateMemory =
          VkDevice -- ^ device
       -> Ptr VkMemoryAllocateInfo -- ^ pAllocateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDeviceMemory -- ^ pMemory
       -> IO VkResult

vkFunAllocateMemory :: VkFun VkAllocateMemory
vkFunAllocateMemory = VkFun (Ptr ("vkAllocateMemory\0"##))

foreign import CALLCV "vulkan/vulkan.h vkAllocateMemory"
  vkAllocateMemory
    :: VkAllocateMemory

foreign import CALLCV unsafe "vulkan/vulkan.h vkAllocateMemory"
  vkAllocateMemoryUnsafe
    :: VkAllocateMemory