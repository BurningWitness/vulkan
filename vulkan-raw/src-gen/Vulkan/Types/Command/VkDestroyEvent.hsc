{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkDestroyEvent where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroyEvent =
          VkDevice -- ^ device
       -> VkEvent -- ^ event
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroyEvent :: VkFun VkDestroyEvent
vkFunDestroyEvent = VkFun (Ptr ("vkDestroyEvent\0"##))

foreign import CALLCV "vulkan/vulkan.h vkDestroyEvent"
  vkDestroyEvent
    :: VkDestroyEvent

foreign import CALLCV unsafe "vulkan/vulkan.h vkDestroyEvent"
  vkDestroyEventUnsafe
    :: VkDestroyEvent