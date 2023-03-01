{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_win32_surface

module Vulkan.Ext.VK_KHR_win32_surface
  ( pattern VK_KHR_WIN32_SURFACE_SPEC_VERSION
  , pattern VK_KHR_WIN32_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR
  , VkWin32SurfaceCreateFlagsKHR
  , VkWin32SurfaceCreateInfoKHR (..)
  , VkCreateWin32SurfaceKHR
  , vkFunCreateWin32SurfaceKHR
  , VkGetPhysicalDeviceWin32PresentationSupportKHR
  , vkFunGetPhysicalDeviceWin32PresentationSupportKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkWin32SurfaceCreateFlagsKHR
import Vulkan.Types.Struct.VkWin32SurfaceCreateInfoKHR
import Vulkan.Types.Command.VkCreateWin32SurfaceKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceWin32PresentationSupportKHR
import Vulkan.Types.VkFun



pattern VK_KHR_WIN32_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_WIN32_SURFACE_SPEC_VERSION = 6

pattern VK_KHR_WIN32_SURFACE_EXTENSION_NAME :: CString
pattern VK_KHR_WIN32_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_WIN32_SURFACE_EXTENSION_NAME = Ptr ("VK_KHR_win32_surface\0"##)

#else

module Vulkan.Ext.VK_KHR_win32_surface where

#endif