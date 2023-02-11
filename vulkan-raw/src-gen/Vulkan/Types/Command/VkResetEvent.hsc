{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkResetEvent where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkResetEvent =
          VkDevice -- ^ device
       -> VkEvent -- ^ event
       -> IO VkResult

vkFunResetEvent :: VkFun VkResetEvent
vkFunResetEvent = VkFun (Ptr ("vkResetEvent\0"##))

foreign import CALLCV "vulkan/vulkan.h vkResetEvent"
  vkResetEvent
    :: VkResetEvent

foreign import CALLCV unsafe "vulkan/vulkan.h vkResetEvent"
  vkResetEventUnsafe
    :: VkResetEvent