{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Command.VkWaitSemaphoresKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreWaitInfo
import Vulkan.Types.VkFun



type VkWaitSemaphoresKHR =
          VkDevice -- ^ device
       -> Ptr VkSemaphoreWaitInfo -- ^ pWaitInfo
       -> #{type uint64_t} -- ^ timeout
       -> IO VkResult

vkFunWaitSemaphoresKHR :: VkFun VkWaitSemaphoresKHR
vkFunWaitSemaphoresKHR = VkFun (Ptr ("vkWaitSemaphoresKHR\0"##))

#else

module Vulkan.Types.Command.VkWaitSemaphoresKHR where

#endif