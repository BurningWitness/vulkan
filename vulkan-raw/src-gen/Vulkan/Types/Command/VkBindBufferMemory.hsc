{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkBindBufferMemory where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkBindBufferMemory =
          VkDevice -- ^ device
       -> VkBuffer -- ^ buffer
       -> VkDeviceMemory -- ^ memory
       -> VkDeviceSize -- ^ memoryOffset
       -> IO VkResult

vkFunBindBufferMemory :: VkFun VkBindBufferMemory
vkFunBindBufferMemory = VkFun (Ptr ("vkBindBufferMemory\0"##))

foreign import CALLCV "vulkan/vulkan.h vkBindBufferMemory"
  vkBindBufferMemory
    :: VkBindBufferMemory

foreign import CALLCV unsafe "vulkan/vulkan.h vkBindBufferMemory"
  vkBindBufferMemoryUnsafe
    :: VkBindBufferMemory