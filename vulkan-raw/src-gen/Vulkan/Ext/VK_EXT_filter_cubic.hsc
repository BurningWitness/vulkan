{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_filter_cubic

module Vulkan.Ext.VK_EXT_filter_cubic
  ( pattern VK_EXT_FILTER_CUBIC_SPEC_VERSION
  , pattern VK_EXT_FILTER_CUBIC_EXTENSION_NAME
  , pattern VK_FILTER_CUBIC_EXT
  , pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_VIEW_IMAGE_FORMAT_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_FILTER_CUBIC_IMAGE_VIEW_IMAGE_FORMAT_PROPERTIES_EXT
  , VkPhysicalDeviceImageViewImageFormatInfoEXT (..)
  , VkFilterCubicImageViewImageFormatPropertiesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFilterCubicImageViewImageFormatPropertiesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceImageViewImageFormatInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_FILTER_CUBIC_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_FILTER_CUBIC_SPEC_VERSION = 3

pattern VK_EXT_FILTER_CUBIC_EXTENSION_NAME :: CString
pattern VK_EXT_FILTER_CUBIC_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_FILTER_CUBIC_EXTENSION_NAME = Ptr ("VK_EXT_filter_cubic\0"##)

#else

module Vulkan.Ext.VK_EXT_filter_cubic where

#endif