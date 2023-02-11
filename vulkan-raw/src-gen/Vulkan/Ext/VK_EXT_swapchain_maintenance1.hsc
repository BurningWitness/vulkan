{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_swapchain_maintenance1

module Vulkan.Ext.VK_EXT_swapchain_maintenance1
  ( pattern VK_EXT_SWAPCHAIN_MAINTENANCE_1_SPEC_VERSION
  , pattern VK_EXT_SWAPCHAIN_MAINTENANCE_1_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SWAPCHAIN_MAINTENANCE_1_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_FENCE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_MODES_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_MODE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SWAPCHAIN_PRESENT_SCALING_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_RELEASE_SWAPCHAIN_IMAGES_INFO_EXT
  , pattern VK_SWAPCHAIN_CREATE_DEFERRED_MEMORY_ALLOCATION_BIT_EXT
  , VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT (..)
  , VkSwapchainPresentFenceInfoEXT (..)
  , VkSwapchainPresentModesCreateInfoEXT (..)
  , VkSwapchainPresentModeInfoEXT (..)
  , VkSwapchainPresentScalingCreateInfoEXT (..)
  , VkReleaseSwapchainImagesInfoEXT (..)
  , VkReleaseSwapchainImagesEXT
  , vkFunReleaseSwapchainImagesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSwapchainCreateFlagBitsKHR
import Vulkan.Types.Struct.VkPhysicalDeviceSwapchainMaintenance1FeaturesEXT
import Vulkan.Types.Struct.VkReleaseSwapchainImagesInfoEXT
import Vulkan.Types.Struct.VkSwapchainPresentFenceInfoEXT
import Vulkan.Types.Struct.VkSwapchainPresentModeInfoEXT
import Vulkan.Types.Struct.VkSwapchainPresentModesCreateInfoEXT
import Vulkan.Types.Struct.VkSwapchainPresentScalingCreateInfoEXT
import Vulkan.Types.Command.VkReleaseSwapchainImagesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SWAPCHAIN_MAINTENANCE_1_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SWAPCHAIN_MAINTENANCE_1_SPEC_VERSION = 1

pattern VK_EXT_SWAPCHAIN_MAINTENANCE_1_EXTENSION_NAME :: CString
pattern VK_EXT_SWAPCHAIN_MAINTENANCE_1_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SWAPCHAIN_MAINTENANCE_1_EXTENSION_NAME = Ptr ("VK_EXT_swapchain_maintenance1\0"##)

#else

module Vulkan.Ext.VK_EXT_swapchain_maintenance1 where

#endif