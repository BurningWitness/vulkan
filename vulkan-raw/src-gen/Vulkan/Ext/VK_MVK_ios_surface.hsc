{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_MVK_ios_surface

module Vulkan.Ext.VK_MVK_ios_surface
  ( pattern VK_MVK_IOS_SURFACE_SPEC_VERSION
  , pattern VK_MVK_IOS_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IOS_SURFACE_CREATE_INFO_MVK
  , VkIOSSurfaceCreateFlagsMVK
  , VkIOSSurfaceCreateInfoMVK (..)
  , VkCreateIOSSurfaceMVK
  , vkFunCreateIOSSurfaceMVK
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkIOSSurfaceCreateFlagsMVK
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkIOSSurfaceCreateInfoMVK
import Vulkan.Types.Command.VkCreateIOSSurfaceMVK
import Vulkan.Types.VkFun



pattern VK_MVK_IOS_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_MVK_IOS_SURFACE_SPEC_VERSION = 3

pattern VK_MVK_IOS_SURFACE_EXTENSION_NAME :: CString
pattern VK_MVK_IOS_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_MVK_IOS_SURFACE_EXTENSION_NAME = Ptr ("VK_MVK_ios_surface\0"##)

#else

module Vulkan.Ext.VK_MVK_ios_surface where

#endif