{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalFenceFeatureFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkExternalFenceFeatureFlags



#if VK_KHR_external_fence_capabilities
type VkExternalFenceFeatureFlagsKHR = VkExternalFenceFeatureFlags
#endif