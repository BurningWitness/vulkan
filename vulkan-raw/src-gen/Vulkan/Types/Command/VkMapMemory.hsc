{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkMapMemory where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkMemoryMapFlags
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkMapMemory =
          VkDevice -- ^ device
       -> VkDeviceMemory -- ^ memory
       -> VkDeviceSize -- ^ offset
       -> VkDeviceSize -- ^ size
       -> VkMemoryMapFlags -- ^ flags
       -> Ptr (Ptr ()) -- ^ ppData
       -> IO VkResult

vkFunMapMemory :: VkFun VkMapMemory
vkFunMapMemory = VkFun (Ptr ("vkMapMemory\0"##))

foreign import CALLCV "vulkan/vulkan.h vkMapMemory"
  vkMapMemory
    :: VkMapMemory

foreign import CALLCV unsafe "vulkan/vulkan.h vkMapMemory"
  vkMapMemoryUnsafe
    :: VkMapMemory