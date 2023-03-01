{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_texture_compression_astc_hdr

module Vulkan.Ext.VK_EXT_texture_compression_astc_hdr
  ( pattern VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_SPEC_VERSION
  , pattern VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_TEXTURE_COMPRESSION_ASTC_HDR_FEATURES_EXT
  , VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
  , pattern VK_FORMAT_ASTC_4x4_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_5x4_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_5x5_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_6x5_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_6x6_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_8x5_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_8x6_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_8x8_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_10x5_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_10x6_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_10x8_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_10x10_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_12x10_SFLOAT_BLOCK_EXT
  , pattern VK_FORMAT_ASTC_12x12_SFLOAT_BLOCK_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_SPEC_VERSION = 1

pattern VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME :: CString
pattern VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_TEXTURE_COMPRESSION_ASTC_HDR_EXTENSION_NAME = Ptr ("VK_EXT_texture_compression_astc_hdr\0"##)

#else

module Vulkan.Ext.VK_EXT_texture_compression_astc_hdr where

#endif