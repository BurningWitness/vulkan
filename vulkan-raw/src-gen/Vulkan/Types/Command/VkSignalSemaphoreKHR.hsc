{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Command.VkSignalSemaphoreKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreSignalInfo
import Vulkan.Types.VkFun



type VkSignalSemaphoreKHR =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreSignalInfo -- ^ pSignalInfo
       -> IO VkResult

vkFunSignalSemaphoreKHR :: VkFun VkSignalSemaphoreKHR
vkFunSignalSemaphoreKHR = VkFun (Ptr ("vkSignalSemaphoreKHR\0"##))

#else

module Vulkan.Types.Command.VkSignalSemaphoreKHR where

#endif