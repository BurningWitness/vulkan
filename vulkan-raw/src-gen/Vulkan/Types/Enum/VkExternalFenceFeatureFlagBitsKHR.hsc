{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalFenceFeatureFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_fence_capabilities
type VkExternalFenceFeatureFlagBitsKHR = VkFlags
#endif