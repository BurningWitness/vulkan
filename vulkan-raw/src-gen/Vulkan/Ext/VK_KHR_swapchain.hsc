{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Ext.VK_KHR_swapchain
  ( pattern VK_KHR_SWAPCHAIN_SPEC_VERSION
  , pattern VK_KHR_SWAPCHAIN_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PRESENT_INFO_KHR
  , pattern VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
  , pattern VK_SUBOPTIMAL_KHR
  , pattern VK_ERROR_OUT_OF_DATE_KHR
  , pattern VK_OBJECT_TYPE_SWAPCHAIN_KHR
  , VkSwapchainCreateFlagBitsKHR
  , pattern VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR
  , pattern VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR
  , VkSwapchainCreateFlagsKHR
  , VkSwapchainCreateInfoKHR (..)
  , VkSwapchainKHR_T
  , VkSwapchainKHR
  , VkPresentInfoKHR (..)
  , VkCreateSwapchainKHR
  , vkFunCreateSwapchainKHR
  , VkDestroySwapchainKHR
  , vkFunDestroySwapchainKHR
  , VkGetSwapchainImagesKHR
  , vkFunGetSwapchainImagesKHR
  , VkAcquireNextImageKHR
  , vkFunAcquireNextImageKHR
  , VkQueuePresentKHR
  , vkFunQueuePresentKHR
#if VK_VERSION_1_1
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_CAPABILITIES_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_SWAPCHAIN_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_SWAPCHAIN_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_ACQUIRE_NEXT_IMAGE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_PRESENT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_SWAPCHAIN_CREATE_INFO_KHR
  , pattern VK_SWAPCHAIN_CREATE_SPLIT_INSTANCE_BIND_REGIONS_BIT_KHR
  , VkImageSwapchainCreateInfoKHR (..)
  , VkBindImageMemorySwapchainInfoKHR (..)
  , VkAcquireNextImageInfoKHR (..)
  , VkDeviceGroupPresentModeFlagBitsKHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_BIT_KHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_REMOTE_BIT_KHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_SUM_BIT_KHR
  , pattern VK_DEVICE_GROUP_PRESENT_MODE_LOCAL_MULTI_DEVICE_BIT_KHR
  , VkDeviceGroupPresentModeFlagsKHR
  , VkDeviceGroupPresentCapabilitiesKHR (..)
  , VkDeviceGroupPresentInfoKHR (..)
  , VkDeviceGroupSwapchainCreateInfoKHR (..)
  , VkGetDeviceGroupPresentCapabilitiesKHR
  , vkFunGetDeviceGroupPresentCapabilitiesKHR
  , VkGetDeviceGroupSurfacePresentModesKHR
  , vkFunGetDeviceGroupSurfacePresentModesKHR
  , VkGetPhysicalDevicePresentRectanglesKHR
  , vkFunGetPhysicalDevicePresentRectanglesKHR
  , VkAcquireNextImage2KHR
  , vkFunAcquireNextImage2KHR
  , pattern VK_SWAPCHAIN_CREATE_PROTECTED_BIT_KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagBitsKHR
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSwapchainCreateFlagBitsKHR
import Vulkan.Types.Enum.VkSwapchainCreateFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAcquireNextImageInfoKHR
import Vulkan.Types.Struct.VkBindImageMemorySwapchainInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupPresentCapabilitiesKHR
import Vulkan.Types.Struct.VkDeviceGroupPresentInfoKHR
import Vulkan.Types.Struct.VkDeviceGroupSwapchainCreateInfoKHR
import Vulkan.Types.Struct.VkImageSwapchainCreateInfoKHR
import Vulkan.Types.Struct.VkPresentInfoKHR
import Vulkan.Types.Struct.VkSwapchainCreateInfoKHR
import Vulkan.Types.Command.VkAcquireNextImage2KHR
import Vulkan.Types.Command.VkAcquireNextImageKHR
import Vulkan.Types.Command.VkCreateSwapchainKHR
import Vulkan.Types.Command.VkDestroySwapchainKHR
import Vulkan.Types.Command.VkGetDeviceGroupPresentCapabilitiesKHR
import Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModesKHR
import Vulkan.Types.Command.VkGetPhysicalDevicePresentRectanglesKHR
import Vulkan.Types.Command.VkGetSwapchainImagesKHR
import Vulkan.Types.Command.VkQueuePresentKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SWAPCHAIN_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SWAPCHAIN_SPEC_VERSION = 70

pattern VK_KHR_SWAPCHAIN_EXTENSION_NAME :: CString
pattern VK_KHR_SWAPCHAIN_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SWAPCHAIN_EXTENSION_NAME = Ptr ("VK_KHR_swapchain\0"##)

#else

module Vulkan.Ext.VK_KHR_swapchain where

#endif