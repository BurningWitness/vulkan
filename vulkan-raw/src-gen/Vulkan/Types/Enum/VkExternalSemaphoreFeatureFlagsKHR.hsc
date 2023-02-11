{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlags



#if VK_KHR_external_semaphore_capabilities
type VkExternalSemaphoreFeatureFlagsKHR = VkExternalSemaphoreFeatureFlags
#endif