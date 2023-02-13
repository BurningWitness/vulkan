{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Command.VkGetSemaphoreCounterValueKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetSemaphoreCounterValueKHR =
          VkDevice -- ^ device
       -> VkSemaphore -- ^ semaphore
       -> Ptr #{type uint64_t} -- ^ pValue
       -> IO VkResult

vkFunGetSemaphoreCounterValueKHR :: VkFun VkGetSemaphoreCounterValueKHR
vkFunGetSemaphoreCounterValueKHR = VkFun (Ptr ("vkGetSemaphoreCounterValueKHR\0"##))

#else

module Vulkan.Types.Command.VkGetSemaphoreCounterValueKHR where

#endif