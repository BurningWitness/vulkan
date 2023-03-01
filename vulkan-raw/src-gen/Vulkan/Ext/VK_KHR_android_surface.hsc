{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_android_surface

module Vulkan.Ext.VK_KHR_android_surface
  ( pattern VK_KHR_ANDROID_SURFACE_SPEC_VERSION
  , pattern VK_KHR_ANDROID_SURFACE_EXTENSION_NAME
  , ANativeWindow
  , pattern VK_STRUCTURE_TYPE_ANDROID_SURFACE_CREATE_INFO_KHR
  , VkAndroidSurfaceCreateFlagsKHR
  , VkAndroidSurfaceCreateInfoKHR (..)
  , VkCreateAndroidSurfaceKHR
  , vkFunCreateAndroidSurfaceKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkAndroidSurfaceCreateFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAndroidSurfaceCreateInfoKHR
import Vulkan.Types.Command.VkCreateAndroidSurfaceKHR
import Vulkan.Types.VkFun



pattern VK_KHR_ANDROID_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_ANDROID_SURFACE_SPEC_VERSION = 6

pattern VK_KHR_ANDROID_SURFACE_EXTENSION_NAME :: CString
pattern VK_KHR_ANDROID_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_ANDROID_SURFACE_EXTENSION_NAME = Ptr ("VK_KHR_android_surface\0"##)

#else

module Vulkan.Ext.VK_KHR_android_surface where

#endif