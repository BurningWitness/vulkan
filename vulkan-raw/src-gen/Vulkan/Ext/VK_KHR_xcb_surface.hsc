{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xcb_surface

module Vulkan.Ext.VK_KHR_xcb_surface
  ( pattern VK_KHR_XCB_SURFACE_SPEC_VERSION
  , pattern VK_KHR_XCB_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_XCB_SURFACE_CREATE_INFO_KHR
  , VkXcbSurfaceCreateFlagsKHR
  , VkXcbSurfaceCreateInfoKHR (..)
  , VkCreateXcbSurfaceKHR
  , vkFunCreateXcbSurfaceKHR
  , VkGetPhysicalDeviceXcbPresentationSupportKHR
  , vkFunGetPhysicalDeviceXcbPresentationSupportKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkXcbSurfaceCreateFlagsKHR
import Vulkan.Types.Struct.VkXcbSurfaceCreateInfoKHR
import Vulkan.Types.Command.VkCreateXcbSurfaceKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceXcbPresentationSupportKHR
import Vulkan.Types.VkFun



pattern VK_KHR_XCB_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_XCB_SURFACE_SPEC_VERSION = 6

pattern VK_KHR_XCB_SURFACE_EXTENSION_NAME :: CString
pattern VK_KHR_XCB_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_XCB_SURFACE_EXTENSION_NAME = Ptr ("VK_KHR_xcb_surface\0"##)

#else

module Vulkan.Ext.VK_KHR_xcb_surface where

#endif