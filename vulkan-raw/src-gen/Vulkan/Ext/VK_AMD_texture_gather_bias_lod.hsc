{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_texture_gather_bias_lod

module Vulkan.Ext.VK_AMD_texture_gather_bias_lod
  ( pattern VK_AMD_TEXTURE_GATHER_BIAS_LOD_SPEC_VERSION
  , pattern VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_TEXTURE_LOD_GATHER_FORMAT_PROPERTIES_AMD
  , VkTextureLODGatherFormatPropertiesAMD (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkTextureLODGatherFormatPropertiesAMD
import Vulkan.Types.VkFun



pattern VK_AMD_TEXTURE_GATHER_BIAS_LOD_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_TEXTURE_GATHER_BIAS_LOD_SPEC_VERSION = 1

pattern VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME :: CString
pattern VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_TEXTURE_GATHER_BIAS_LOD_EXTENSION_NAME = Ptr ("VK_AMD_texture_gather_bias_lod\0"##)

#else

module Vulkan.Ext.VK_AMD_texture_gather_bias_lod where

#endif