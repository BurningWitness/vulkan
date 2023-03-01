{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_rgba10x6_formats

module Vulkan.Ext.VK_EXT_rgba10x6_formats
  ( pattern VK_EXT_RGBA10X6_FORMATS_SPEC_VERSION
  , pattern VK_EXT_RGBA10X6_FORMATS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_RGBA10X6_FORMATS_FEATURES_EXT
  , VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceRGBA10X6FormatsFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_RGBA10X6_FORMATS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_RGBA10X6_FORMATS_SPEC_VERSION = 1

pattern VK_EXT_RGBA10X6_FORMATS_EXTENSION_NAME :: CString
pattern VK_EXT_RGBA10X6_FORMATS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_RGBA10X6_FORMATS_EXTENSION_NAME = Ptr ("VK_EXT_rgba10x6_formats\0"##)

#else

module Vulkan.Ext.VK_EXT_rgba10x6_formats where

#endif