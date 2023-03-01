{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDeviceWaitIdle where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkDeviceWaitIdle =
          VkDevice -- ^ device
       -> IO VkResult

vkFunDeviceWaitIdle :: VkFun VkDeviceWaitIdle
vkFunDeviceWaitIdle = VkFun (Ptr ("vkDeviceWaitIdle\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDeviceWaitIdle"
  vkDeviceWaitIdle
    :: VkDeviceWaitIdle

foreign import CALLCV unsafe "vulkan/vulkan.h vkDeviceWaitIdle"
  vkDeviceWaitIdleUnsafe
    :: VkDeviceWaitIdle