{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryAllocateFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkMemoryAllocateFlags



#if VK_KHR_device_group
type VkMemoryAllocateFlagsKHR = VkMemoryAllocateFlags
#endif