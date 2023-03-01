{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_semaphore_capabilities
type VkExternalSemaphoreFeatureFlagsKHR = VkFlags
#endif