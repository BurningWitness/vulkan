{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSwapchainCreateFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_swapchain
type VkSwapchainCreateFlagBitsKHR = VkFlags
#endif

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)
-- | Allow images with VK_IMAGE_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT
pattern VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR = 1
#endif

#if VK_KHR_swapchain
-- | Swapchain is protected
pattern VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR = 2
#endif

#if VK_KHR_swapchain_mutable_format
pattern VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SWAPCHAIN_CREATE_MUTABLE_FORMAT_BIT_KHR = 4
#endif

#if VK_EXT_swapchain_maintenance1
pattern VK_SWAPCHAIN_CREATE_DEFERRED_MEMORY_ALLOCATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SWAPCHAIN_CREATE_DEFERRED_MEMORY_ALLOCATION_BIT_EXT = 8
#endif