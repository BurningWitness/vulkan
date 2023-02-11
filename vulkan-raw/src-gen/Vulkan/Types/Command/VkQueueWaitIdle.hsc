{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkQueueWaitIdle where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkQueueWaitIdle =
          VkQueue -- ^ queue
       -> IO VkResult

vkFunQueueWaitIdle :: VkFun VkQueueWaitIdle
vkFunQueueWaitIdle = VkFun (Ptr ("vkQueueWaitIdle\0"##))

foreign import CALLCV "vulkan/vulkan.h vkQueueWaitIdle"
  vkQueueWaitIdle
    :: VkQueueWaitIdle

foreign import CALLCV unsafe "vulkan/vulkan.h vkQueueWaitIdle"
  vkQueueWaitIdleUnsafe
    :: VkQueueWaitIdle