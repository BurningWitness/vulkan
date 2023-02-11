{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_custom_border_color

module Vulkan.Ext.VK_EXT_custom_border_color
  ( pattern VK_EXT_CUSTOM_BORDER_COLOR_SPEC_VERSION
  , pattern VK_EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_SAMPLER_CUSTOM_BORDER_COLOR_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CUSTOM_BORDER_COLOR_FEATURES_EXT
  , pattern VK_BORDER_COLOR_FLOAT_CUSTOM_EXT
  , pattern VK_BORDER_COLOR_INT_CUSTOM_EXT
  , VkSamplerCustomBorderColorCreateInfoEXT (..)
  , VkPhysicalDeviceCustomBorderColorPropertiesEXT (..)
  , VkPhysicalDeviceCustomBorderColorFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkBorderColor
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceCustomBorderColorFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceCustomBorderColorPropertiesEXT
import Vulkan.Types.Struct.VkSamplerCustomBorderColorCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_CUSTOM_BORDER_COLOR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_CUSTOM_BORDER_COLOR_SPEC_VERSION = 12

pattern VK_EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME :: CString
pattern VK_EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_CUSTOM_BORDER_COLOR_EXTENSION_NAME = Ptr ("VK_EXT_custom_border_color\0"##)

#else

module Vulkan.Ext.VK_EXT_custom_border_color where

#endif