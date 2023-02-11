{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreTypeKHR where

import Data.Int
import Vulkan.Types.Enum.VkSemaphoreType



#if VK_KHR_timeline_semaphore
type VkSemaphoreTypeKHR = VkSemaphoreType
#endif