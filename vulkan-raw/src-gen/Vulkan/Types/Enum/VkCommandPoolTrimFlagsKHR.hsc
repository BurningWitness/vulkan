{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCommandPoolTrimFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkCommandPoolTrimFlags



#if VK_KHR_maintenance1
type VkCommandPoolTrimFlagsKHR = VkCommandPoolTrimFlags
#endif