{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_directfb_surface

module Vulkan.Ext.VK_EXT_directfb_surface
  ( pattern VK_EXT_DIRECTFB_SURFACE_SPEC_VERSION
  , pattern VK_EXT_DIRECTFB_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DIRECTFB_SURFACE_CREATE_INFO_EXT
  , VkDirectFBSurfaceCreateFlagsEXT
  , VkDirectFBSurfaceCreateInfoEXT (..)
  , VkCreateDirectFBSurfaceEXT
  , vkFunCreateDirectFBSurfaceEXT
  , VkGetPhysicalDeviceDirectFBPresentationSupportEXT
  , vkFunGetPhysicalDeviceDirectFBPresentationSupportEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDirectFBSurfaceCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDirectFBSurfaceCreateInfoEXT
import Vulkan.Types.Command.VkCreateDirectFBSurfaceEXT
import Vulkan.Types.Command.VkGetPhysicalDeviceDirectFBPresentationSupportEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DIRECTFB_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DIRECTFB_SURFACE_SPEC_VERSION = 1

pattern VK_EXT_DIRECTFB_SURFACE_EXTENSION_NAME :: CString
pattern VK_EXT_DIRECTFB_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DIRECTFB_SURFACE_EXTENSION_NAME = Ptr ("VK_EXT_directfb_surface\0"##)

#else

module Vulkan.Ext.VK_EXT_directfb_surface where

#endif