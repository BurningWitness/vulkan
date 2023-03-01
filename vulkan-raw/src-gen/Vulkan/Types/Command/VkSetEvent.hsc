{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkSetEvent where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkSetEvent =
          VkDevice -- ^ device
       -> VkEvent -- ^ event
       -> IO VkResult

vkFunSetEvent :: VkFun VkSetEvent
vkFunSetEvent = VkFun (Ptr ("vkSetEvent\0"##))

foreign import CALLCV "vulkan/vulkan.h vkSetEvent"
  vkSetEvent
    :: VkSetEvent

foreign import CALLCV unsafe "vulkan/vulkan.h vkSetEvent"
  vkSetEventUnsafe
    :: VkSetEvent