{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_wayland_surface

module Vulkan.Ext.VK_KHR_wayland_surface
  ( pattern VK_KHR_WAYLAND_SURFACE_SPEC_VERSION
  , pattern VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_WAYLAND_SURFACE_CREATE_INFO_KHR
  , VkWaylandSurfaceCreateFlagsKHR
  , VkWaylandSurfaceCreateInfoKHR (..)
  , VkCreateWaylandSurfaceKHR
  , vkFunCreateWaylandSurfaceKHR
  , VkGetPhysicalDeviceWaylandPresentationSupportKHR
  , vkFunGetPhysicalDeviceWaylandPresentationSupportKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkWaylandSurfaceCreateFlagsKHR
import Vulkan.Types.Struct.VkWaylandSurfaceCreateInfoKHR
import Vulkan.Types.Command.VkCreateWaylandSurfaceKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceWaylandPresentationSupportKHR
import Vulkan.Types.VkFun



pattern VK_KHR_WAYLAND_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_WAYLAND_SURFACE_SPEC_VERSION = 6

pattern VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME :: CString
pattern VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_WAYLAND_SURFACE_EXTENSION_NAME = Ptr ("VK_KHR_wayland_surface\0"##)

#else

module Vulkan.Ext.VK_KHR_wayland_surface where

#endif