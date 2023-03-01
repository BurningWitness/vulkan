{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_4444_formats

module Vulkan.Ext.VK_EXT_4444_formats
  ( pattern VK_EXT_4444_FORMATS_SPEC_VERSION
  , pattern VK_EXT_4444_FORMATS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_4444_FORMATS_FEATURES_EXT
  , pattern VK_FORMAT_A4R4G4B4_UNORM_PACK16_EXT
  , pattern VK_FORMAT_A4B4G4R4_UNORM_PACK16_EXT
  , VkPhysicalDevice4444FormatsFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevice4444FormatsFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_4444_FORMATS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_4444_FORMATS_SPEC_VERSION = 1

pattern VK_EXT_4444_FORMATS_EXTENSION_NAME :: CString
pattern VK_EXT_4444_FORMATS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_4444_FORMATS_EXTENSION_NAME = Ptr ("VK_EXT_4444_formats\0"##)

#else

module Vulkan.Ext.VK_EXT_4444_formats where

#endif