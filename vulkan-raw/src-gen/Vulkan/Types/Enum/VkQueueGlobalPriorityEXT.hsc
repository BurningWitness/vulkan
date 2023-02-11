{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueueGlobalPriorityEXT where

import Data.Int
import Vulkan.Types.Enum.VkQueueGlobalPriorityKHR



#if VK_EXT_global_priority
type VkQueueGlobalPriorityEXT = VkQueueGlobalPriorityKHR
#endif