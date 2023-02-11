{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR where

import Vulkan.Types.Base



#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)
type VkDeviceGroupPresentModeFlagsKHR = VkFlags
#endif