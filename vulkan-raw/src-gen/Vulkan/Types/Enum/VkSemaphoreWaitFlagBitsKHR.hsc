{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreWaitFlagBitsKHR where

import Data.Int
import Vulkan.Types.Enum.VkSemaphoreWaitFlagBits



#if VK_KHR_timeline_semaphore
type VkSemaphoreWaitFlagBitsKHR = VkSemaphoreWaitFlagBits
#endif