{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPeerMemoryFeatureFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_device_group
type VkPeerMemoryFeatureFlagBitsKHR = VkFlags
#endif