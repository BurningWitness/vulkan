{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_texel_buffer_alignment

module Vulkan.Ext.VK_EXT_texel_buffer_alignment
  ( pattern VK_EXT_TEXEL_BUFFER_ALIGNMENT_SPEC_VERSION
  , pattern VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXEL_BUFFER_ALIGNMENT_PROPERTIES_EXT
  , VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT (..)
  , VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceTexelBufferAlignmentPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_TEXEL_BUFFER_ALIGNMENT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_TEXEL_BUFFER_ALIGNMENT_SPEC_VERSION = 1

pattern VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME :: CString
pattern VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_TEXEL_BUFFER_ALIGNMENT_EXTENSION_NAME = Ptr ("VK_EXT_texel_buffer_alignment\0"##)

#else

module Vulkan.Ext.VK_EXT_texel_buffer_alignment where

#endif