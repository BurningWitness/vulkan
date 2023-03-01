{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Ext.VK_KHR_get_display_properties2
  ( pattern VK_KHR_GET_DISPLAY_PROPERTIES_2_SPEC_VERSION
  , pattern VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DISPLAY_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_DISPLAY_PLANE_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_DISPLAY_MODE_PROPERTIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_DISPLAY_PLANE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_DISPLAY_PLANE_CAPABILITIES_2_KHR
  , VkDisplayProperties2KHR (..)
  , VkDisplayPlaneProperties2KHR (..)
  , VkDisplayModeProperties2KHR (..)
  , VkDisplayPlaneInfo2KHR (..)
  , VkDisplayPlaneCapabilities2KHR (..)
  , VkGetPhysicalDeviceDisplayProperties2KHR
  , vkFunGetPhysicalDeviceDisplayProperties2KHR
  , VkGetPhysicalDeviceDisplayPlaneProperties2KHR
  , vkFunGetPhysicalDeviceDisplayPlaneProperties2KHR
  , VkGetDisplayModeProperties2KHR
  , vkFunGetDisplayModeProperties2KHR
  , VkGetDisplayPlaneCapabilities2KHR
  , vkFunGetDisplayPlaneCapabilities2KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayModeProperties2KHR
import Vulkan.Types.Struct.VkDisplayPlaneCapabilities2KHR
import Vulkan.Types.Struct.VkDisplayPlaneInfo2KHR
import Vulkan.Types.Struct.VkDisplayPlaneProperties2KHR
import Vulkan.Types.Struct.VkDisplayProperties2KHR
import Vulkan.Types.Command.VkGetDisplayModeProperties2KHR
import Vulkan.Types.Command.VkGetDisplayPlaneCapabilities2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPlaneProperties2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceDisplayProperties2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_GET_DISPLAY_PROPERTIES_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_GET_DISPLAY_PROPERTIES_2_SPEC_VERSION = 1

pattern VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME :: CString
pattern VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_GET_DISPLAY_PROPERTIES_2_EXTENSION_NAME = Ptr ("VK_KHR_get_display_properties2\0"##)

#else

module Vulkan.Ext.VK_KHR_get_display_properties2 where

#endif