{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_imagepipe_surface

module Vulkan.Ext.VK_FUCHSIA_imagepipe_surface
  ( pattern VK_FUCHSIA_IMAGEPIPE_SURFACE_SPEC_VERSION
  , pattern VK_FUCHSIA_IMAGEPIPE_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMAGEPIPE_SURFACE_CREATE_INFO_FUCHSIA
  , VkImagePipeSurfaceCreateFlagsFUCHSIA
  , VkImagePipeSurfaceCreateInfoFUCHSIA (..)
  , VkCreateImagePipeSurfaceFUCHSIA
  , vkFunCreateImagePipeSurfaceFUCHSIA
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImagePipeSurfaceCreateFlagsFUCHSIA
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImagePipeSurfaceCreateInfoFUCHSIA
import Vulkan.Types.Command.VkCreateImagePipeSurfaceFUCHSIA
import Vulkan.Types.VkFun



pattern VK_FUCHSIA_IMAGEPIPE_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_FUCHSIA_IMAGEPIPE_SURFACE_SPEC_VERSION = 1

pattern VK_FUCHSIA_IMAGEPIPE_SURFACE_EXTENSION_NAME :: CString
pattern VK_FUCHSIA_IMAGEPIPE_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_FUCHSIA_IMAGEPIPE_SURFACE_EXTENSION_NAME = Ptr ("VK_FUCHSIA_imagepipe_surface\0"##)

#else

module Vulkan.Ext.VK_FUCHSIA_imagepipe_surface where

#endif