{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_GGP_stream_descriptor_surface

module Vulkan.Ext.VK_GGP_stream_descriptor_surface
  ( pattern VK_GGP_STREAM_DESCRIPTOR_SURFACE_SPEC_VERSION
  , pattern VK_GGP_STREAM_DESCRIPTOR_SURFACE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_STREAM_DESCRIPTOR_SURFACE_CREATE_INFO_GGP
  , VkStreamDescriptorSurfaceCreateFlagsGGP
  , VkStreamDescriptorSurfaceCreateInfoGGP (..)
  , VkCreateStreamDescriptorSurfaceGGP
  , vkFunCreateStreamDescriptorSurfaceGGP
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStreamDescriptorSurfaceCreateFlagsGGP
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkStreamDescriptorSurfaceCreateInfoGGP
import Vulkan.Types.Command.VkCreateStreamDescriptorSurfaceGGP
import Vulkan.Types.VkFun



pattern VK_GGP_STREAM_DESCRIPTOR_SURFACE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_GGP_STREAM_DESCRIPTOR_SURFACE_SPEC_VERSION = 1

pattern VK_GGP_STREAM_DESCRIPTOR_SURFACE_EXTENSION_NAME :: CString
pattern VK_GGP_STREAM_DESCRIPTOR_SURFACE_EXTENSION_NAME <- (const False -> True)
  where
    VK_GGP_STREAM_DESCRIPTOR_SURFACE_EXTENSION_NAME = Ptr ("VK_GGP_stream_descriptor_surface\0"##)

#else

module Vulkan.Ext.VK_GGP_stream_descriptor_surface where

#endif