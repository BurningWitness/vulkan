{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPeerMemoryFeatureFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkPeerMemoryFeatureFlags



#if VK_KHR_device_group
type VkPeerMemoryFeatureFlagsKHR = VkPeerMemoryFeatureFlags
#endif