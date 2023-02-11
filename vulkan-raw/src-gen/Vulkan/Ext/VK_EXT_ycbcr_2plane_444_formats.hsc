{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_ycbcr_2plane_444_formats

module Vulkan.Ext.VK_EXT_ycbcr_2plane_444_formats
  ( pattern VK_EXT_YCBCR_2PLANE_444_FORMATS_SPEC_VERSION
  , pattern VK_EXT_YCBCR_2PLANE_444_FORMATS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_YCBCR_2_PLANE_444_FORMATS_FEATURES_EXT
  , pattern VK_FORMAT_G8_B8R8_2PLANE_444_UNORM_EXT
  , pattern VK_FORMAT_G10X6_B10X6R10X6_2PLANE_444_UNORM_3PACK16_EXT
  , pattern VK_FORMAT_G12X4_B12X4R12X4_2PLANE_444_UNORM_3PACK16_EXT
  , pattern VK_FORMAT_G16_B16R16_2PLANE_444_UNORM_EXT
  , VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceYcbcr2Plane444FormatsFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_YCBCR_2PLANE_444_FORMATS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_YCBCR_2PLANE_444_FORMATS_SPEC_VERSION = 1

pattern VK_EXT_YCBCR_2PLANE_444_FORMATS_EXTENSION_NAME :: CString
pattern VK_EXT_YCBCR_2PLANE_444_FORMATS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_YCBCR_2PLANE_444_FORMATS_EXTENSION_NAME = Ptr ("VK_EXT_ycbcr_2plane_444_formats\0"##)

#else

module Vulkan.Ext.VK_EXT_ycbcr_2plane_444_formats where

#endif