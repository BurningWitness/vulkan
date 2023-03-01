{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPeerMemoryFeatureFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_device_group
type VkPeerMemoryFeatureFlagsKHR = VkFlags
#endif