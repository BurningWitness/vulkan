{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_shader_image_footprint

module Vulkan.Ext.VK_NV_shader_image_footprint
  ( pattern VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION
  , pattern VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_FOOTPRINT_FEATURES_NV
  , VkPhysicalDeviceShaderImageFootprintFeaturesNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderImageFootprintFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_SHADER_IMAGE_FOOTPRINT_SPEC_VERSION = 2

pattern VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME :: CString
pattern VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_SHADER_IMAGE_FOOTPRINT_EXTENSION_NAME = Ptr ("VK_NV_shader_image_footprint\0"##)

#else

module Vulkan.Ext.VK_NV_shader_image_footprint where

#endif