{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryFeatureFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlags



#if VK_KHR_external_memory_capabilities
type VkExternalMemoryFeatureFlagsKHR = VkExternalMemoryFeatureFlags
#endif