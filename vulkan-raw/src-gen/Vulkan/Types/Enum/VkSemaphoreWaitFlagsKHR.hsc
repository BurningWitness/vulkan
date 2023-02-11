{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreWaitFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkSemaphoreWaitFlags



#if VK_KHR_timeline_semaphore
type VkSemaphoreWaitFlagsKHR = VkSemaphoreWaitFlags
#endif