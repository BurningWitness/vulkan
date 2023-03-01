{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryAllocateFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_device_group
type VkMemoryAllocateFlagBitsKHR = VkFlags
#endif