{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NN_vi_surface

module Vulkan.Ext.VK_NN_vi_surface
  ( pattern VK_NN_VI_SURFACE_SPEC_VERSION
  , pattern VK_NN_VI_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VI_SURFACE_CREATE_INFO_NN
  , VkViSurfaceCreateFlagsNN
  , VkViSurfaceCreateInfoNN (..)
  , VkCreateViSurfaceNN
  , vkFunCreateViSurfaceNN
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkViSurfaceCreateFlagsNN
import Vulkan.Types.Struct.VkViSurfaceCreateInfoNN
import Vulkan.Types.Command.VkCreateViSurfaceNN
import Vulkan.Types.VkFun



pattern VK_NN_VI_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NN_VI_SURFACE_SPEC_VERSION = 1

pattern VK_NN_VI_SURFACE_EXTENSION_NAME :: CString
pattern VK_NN_VI_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NN_VI_SURFACE_EXTENSION_NAME = Ptr ("VK_NN_vi_surface\0"##)

#else

module Vulkan.Ext.VK_NN_vi_surface where

#endif