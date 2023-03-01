{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_border_color_swizzle

module Vulkan.Ext.VK_EXT_border_color_swizzle
  ( pattern VK_EXT_BORDER_COLOR_SWIZZLE_SPEC_VERSION
  , pattern VK_EXT_BORDER_COLOR_SWIZZLE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BORDER_COLOR_SWIZZLE_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_SAMPLER_BORDER_COLOR_COMPONENT_MAPPING_CREATE_INFO_EXT
  , VkPhysicalDeviceBorderColorSwizzleFeaturesEXT (..)
  , VkSamplerBorderColorComponentMappingCreateInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceBorderColorSwizzleFeaturesEXT
import Vulkan.Types.Struct.VkSamplerBorderColorComponentMappingCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_BORDER_COLOR_SWIZZLE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_BORDER_COLOR_SWIZZLE_SPEC_VERSION = 1

pattern VK_EXT_BORDER_COLOR_SWIZZLE_EXTENSION_NAME :: CString
pattern VK_EXT_BORDER_COLOR_SWIZZLE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_BORDER_COLOR_SWIZZLE_EXTENSION_NAME = Ptr ("VK_EXT_border_color_swizzle\0"##)

#else

module Vulkan.Ext.VK_EXT_border_color_swizzle where

#endif