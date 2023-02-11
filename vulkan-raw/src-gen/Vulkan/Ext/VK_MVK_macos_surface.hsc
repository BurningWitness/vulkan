{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_MVK_macos_surface

module Vulkan.Ext.VK_MVK_macos_surface
  ( pattern VK_MVK_MACOS_SURFACE_SPEC_VERSION
  , pattern VK_MVK_MACOS_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_MACOS_SURFACE_CREATE_INFO_MVK
  , VkMacOSSurfaceCreateFlagsMVK
  , VkMacOSSurfaceCreateInfoMVK (..)
  , VkCreateMacOSSurfaceMVK
  , vkFunCreateMacOSSurfaceMVK
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkMacOSSurfaceCreateFlagsMVK
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMacOSSurfaceCreateInfoMVK
import Vulkan.Types.Command.VkCreateMacOSSurfaceMVK
import Vulkan.Types.VkFun



pattern VK_MVK_MACOS_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_MVK_MACOS_SURFACE_SPEC_VERSION = 3

pattern VK_MVK_MACOS_SURFACE_EXTENSION_NAME :: CString
pattern VK_MVK_MACOS_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_MVK_MACOS_SURFACE_EXTENSION_NAME = Ptr ("VK_MVK_macos_surface\0"##)

#else

module Vulkan.Ext.VK_MVK_macos_surface where

#endif