{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_surface_capabilities2

module Vulkan.Ext.VK_KHR_get_surface_capabilities2
  ( pattern VK_KHR_GET_SURFACE_CAPABILITIES_2_SPEC_VERSION
  , pattern VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SURFACE_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_2_KHR
  , pattern VK_STRUCTURE_TYPE_SURFACE_FORMAT_2_KHR
  , VkPhysicalDeviceSurfaceInfo2KHR (..)
  , VkSurfaceCapabilities2KHR (..)
  , VkSurfaceFormat2KHR (..)
  , VkGetPhysicalDeviceSurfaceCapabilities2KHR
  , vkFunGetPhysicalDeviceSurfaceCapabilities2KHR
  , VkGetPhysicalDeviceSurfaceFormats2KHR
  , vkFunGetPhysicalDeviceSurfaceFormats2KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR
import Vulkan.Types.Struct.VkSurfaceCapabilities2KHR
import Vulkan.Types.Struct.VkSurfaceFormat2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilities2KHR
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceFormats2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_GET_SURFACE_CAPABILITIES_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_GET_SURFACE_CAPABILITIES_2_SPEC_VERSION = 1

pattern VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME :: CString
pattern VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_GET_SURFACE_CAPABILITIES_2_EXTENSION_NAME = Ptr ("VK_KHR_get_surface_capabilities2\0"##)

#else

module Vulkan.Ext.VK_KHR_get_surface_capabilities2 where

#endif