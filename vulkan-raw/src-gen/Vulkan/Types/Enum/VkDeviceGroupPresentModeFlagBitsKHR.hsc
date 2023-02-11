{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagBitsKHR where

import Vulkan.Types.Base



#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)
type VkDeviceGroupPresentModeFlagBitsKHR = VkFlags
#endif

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)
-- | Present from local memory
pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR = 1
#endif

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)
-- | Present from remote memory
pattern VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR = 2
#endif

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)
-- | Present sum of local and/or remote memory
pattern VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR = 4
#endif

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)
-- | Each physical device presents from local memory
pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR = 8
#endif