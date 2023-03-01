{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Ext.VK_KHR_display
  ( pattern VK_KHR_DISPLAY_SPEC_VERSION
  , pattern VK_KHR_DISPLAY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DISPLAY_MODE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DISPLAY_SURFACE_CREATE_INFO_KHR
  , pattern VK_OBJECT_TYPE_DISPLAY_KHR
  , pattern VK_OBJECT_TYPE_DISPLAY_MODE_KHR
  , VkDisplayKHR_T
  , VkDisplayKHR
  , VkDisplayModeCreateFlagsKHR
  , VkDisplayModeCreateInfoKHR (..)
  , VkDisplayModeKHR_T
  , VkDisplayModeKHR
  , VkDisplayModeParametersKHR (..)
  , VkDisplayModePropertiesKHR (..)
  , VkDisplayPlaneAlphaFlagBitsKHR
  , pattern VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR
  , pattern VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR
  , pattern VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR
  , pattern VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR
  , VkDisplayPlaneAlphaFlagsKHR
  , VkDisplayPlaneCapabilitiesKHR (..)
  , VkDisplayPlanePropertiesKHR (..)
  , VkDisplayPropertiesKHR (..)
  , VkDisplaySurfaceCreateFlagsKHR
  , VkDisplaySurfaceCreateInfoKHR (..)
  , VkSurfaceTransformFlagsKHR
  , VkGetPhysicalDeviceDisplayPropertiesKHR
  , vkFunGetPhysicalDeviceDisplayPropertiesKHR
  , VkGetPhysicalDeviceDisplayPlanePropertiesKHR
  , vkFunGetPhysicalDeviceDisplayPlanePropertiesKHR
  , VkGetDisplayPlaneSupportedDisplaysKHR
  , vkFunGetDisplayPlaneSupportedDisplaysKHR
  , VkGetDisplayModePropertiesKHR
  , vkFunGetDisplayModePropertiesKHR
  , VkCreateDisplayModeKHR
  , vkFunCreateDisplayModeKHR
  , VkGetDisplayPlaneCapabilitiesKHR
  , vkFunGetDisplayPlaneCapabilitiesKHR
  , VkCreateDisplayPlaneSurfaceKHR
  , vkFunCreateDisplayPlaneSurfaceKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDisplayModeCreateFlagsKHR
import Vulkan.Types.Enum.VkDisplayPlaneAlphaFlagBitsKHR
import Vulkan.Types.Enum.VkDisplayPlaneAlphaFlagsKHR
import Vulkan.Types.Enum.VkDisplaySurfaceCreateFlagsKHR
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkSurfaceTransformFlagsKHR
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayModeCreateInfoKHR
import Vulkan.Types.Struct.VkDisplayModeParametersKHR
import Vulkan.Types.Struct.VkDisplayModePropertiesKHR
import Vulkan.Types.Struct.VkDisplayPlaneCapabilitiesKHR
import Vulkan.Types.Struct.VkDisplayPlanePropertiesKHR
import Vulkan.Types.Struct.VkDisplayPropertiesKHR
import Vulkan.Types.Struct.VkDisplaySurfaceCreateInfoKHR
import Vulkan.Types.Command.VkCreateDisplayModeKHR
import Vulkan.Types.Command.VkCreateDisplayPlaneSurfaceKHR
import Vulkan.Types.Command.VkGetDisplayModePropertiesKHR
import Vulkan.Types.Command.VkGetDisplayPlaneCapabilitiesKHR
import Vulkan.Types.Command.VkGetDisplayPlaneSupportedDisplaysKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPlanePropertiesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DISPLAY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DISPLAY_SPEC_VERSION = 23

pattern VK_KHR_DISPLAY_EXTENSION_NAME :: CString
pattern VK_KHR_DISPLAY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DISPLAY_EXTENSION_NAME = Ptr ("VK_KHR_display\0"##)

#else

module Vulkan.Ext.VK_KHR_display where

#endif