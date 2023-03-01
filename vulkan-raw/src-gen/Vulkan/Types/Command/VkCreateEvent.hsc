{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCreateEvent where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkEventCreateInfo
import Vulkan.Types.VkFun



type VkCreateEvent =
          VkDevice -- ^ device
       -> Ptr VkEventCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkEvent -- ^ pEvent
       -> IO VkResult

vkFunCreateEvent :: VkFun VkCreateEvent
vkFunCreateEvent = VkFun (Ptr ("vkCreateEvent\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCreateEvent"
  vkCreateEvent
    :: VkCreateEvent

foreign import CALLCV unsafe "vulkan/vulkan.h vkCreateEvent"
  vkCreateEventUnsafe
    :: VkCreateEvent