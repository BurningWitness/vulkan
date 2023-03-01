{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive

module Vulkan.Ext.VK_EXT_full_screen_exclusive
  ( pattern VK_EXT_FULL_SCREEN_EXCLUSIVE_SPEC_VERSION
  , pattern VK_EXT_FULL_SCREEN_EXCLUSIVE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SURFACE_CAPABILITIES_FULL_SCREEN_EXCLUSIVE_EXT
  , pattern VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT
  , VkFullScreenExclusiveEXT
  , pattern VK_FULL_SCREEN_EXCLUSIVE_DEFAULT_EXT
  , pattern VK_FULL_SCREEN_EXCLUSIVE_ALLOWED_EXT
  , pattern VK_FULL_SCREEN_EXCLUSIVE_DISALLOWED_EXT
  , pattern VK_FULL_SCREEN_EXCLUSIVE_APPLICATION_CONTROLLED_EXT
  , VkSurfaceFullScreenExclusiveInfoEXT (..)
  , VkSurfaceCapabilitiesFullScreenExclusiveEXT (..)
  , VkGetPhysicalDeviceSurfacePresentModes2EXT
  , vkFunGetPhysicalDeviceSurfacePresentModes2EXT
  , VkAcquireFullScreenExclusiveModeEXT
  , vkFunAcquireFullScreenExclusiveModeEXT
  , VkReleaseFullScreenExclusiveModeEXT
  , vkFunReleaseFullScreenExclusiveModeEXT
#if VK_KHR_win32_surface
  , pattern VK_STRUCTURE_TYPE_SURFACE_FULL_SCREEN_EXCLUSIVE_WIN32_INFO_EXT
  , VkSurfaceFullScreenExclusiveWin32InfoEXT (..)
#endif
#if VK_KHR_device_group
  , VkGetDeviceGroupSurfacePresentModes2EXT
  , vkFunGetDeviceGroupSurfacePresentModes2EXT
#endif
#if VK_VERSION_1_1
  , VkGetDeviceGroupSurfacePresentModes2EXT
  , vkFunGetDeviceGroupSurfacePresentModes2EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFullScreenExclusiveEXT
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkSurfaceCapabilitiesFullScreenExclusiveEXT
import Vulkan.Types.Struct.VkSurfaceFullScreenExclusiveInfoEXT
import Vulkan.Types.Struct.VkSurfaceFullScreenExclusiveWin32InfoEXT
import Vulkan.Types.Command.VkAcquireFullScreenExclusiveModeEXT
import Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModes2EXT
import Vulkan.Types.Command.VkGetPhysicalDeviceSurfacePresentModes2EXT
import Vulkan.Types.Command.VkReleaseFullScreenExclusiveModeEXT
import Vulkan.Types.VkFun



pattern VK_EXT_FULL_SCREEN_EXCLUSIVE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_FULL_SCREEN_EXCLUSIVE_SPEC_VERSION = 4

pattern VK_EXT_FULL_SCREEN_EXCLUSIVE_EXTENSION_NAME :: CString
pattern VK_EXT_FULL_SCREEN_EXCLUSIVE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_FULL_SCREEN_EXCLUSIVE_EXTENSION_NAME = Ptr ("VK_EXT_full_screen_exclusive\0"##)

#else

module Vulkan.Ext.VK_EXT_full_screen_exclusive where

#endif