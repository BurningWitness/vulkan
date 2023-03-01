{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_headless_surface

module Vulkan.Ext.VK_EXT_headless_surface
  ( pattern VK_EXT_HEADLESS_SURFACE_SPEC_VERSION
  , pattern VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_HEADLESS_SURFACE_CREATE_INFO_EXT
  , VkHeadlessSurfaceCreateFlagsEXT
  , VkHeadlessSurfaceCreateInfoEXT (..)
  , VkCreateHeadlessSurfaceEXT
  , vkFunCreateHeadlessSurfaceEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkHeadlessSurfaceCreateFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkHeadlessSurfaceCreateInfoEXT
import Vulkan.Types.Command.VkCreateHeadlessSurfaceEXT
import Vulkan.Types.VkFun



pattern VK_EXT_HEADLESS_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_HEADLESS_SURFACE_SPEC_VERSION = 1

pattern VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME :: CString
pattern VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_HEADLESS_SURFACE_EXTENSION_NAME = Ptr ("VK_EXT_headless_surface\0"##)

#else

module Vulkan.Ext.VK_EXT_headless_surface where

#endif