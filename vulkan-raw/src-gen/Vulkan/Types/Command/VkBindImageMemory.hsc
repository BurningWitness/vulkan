{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkBindImageMemory where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkBindImageMemory =
          VkDevice -- ^ device
       -> VkImage -- ^ image
       -> VkDeviceMemory -- ^ memory
       -> VkDeviceSize -- ^ memoryOffset
       -> IO VkResult

vkFunBindImageMemory :: VkFun VkBindImageMemory
vkFunBindImageMemory = VkFun (Ptr ("vkBindImageMemory\0"##))

foreign import CALLCV "vulkan/vulkan.h vkBindImageMemory"
  vkBindImageMemory
    :: VkBindImageMemory

foreign import CALLCV unsafe "vulkan/vulkan.h vkBindImageMemory"
  vkBindImageMemoryUnsafe
    :: VkBindImageMemory