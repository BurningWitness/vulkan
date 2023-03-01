{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_float16_int8

module Vulkan.Ext.VK_KHR_shader_float16_int8
  ( pattern VK_KHR_SHADER_FLOAT16_INT8_SPEC_VERSION
  , pattern VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_FLOAT16_INT8_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FLOAT16_INT8_FEATURES_KHR
  , VkPhysicalDeviceShaderFloat16Int8FeaturesKHR
  , VkPhysicalDeviceFloat16Int8FeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFloat16Int8FeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceShaderFloat16Int8FeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_FLOAT16_INT8_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_FLOAT16_INT8_SPEC_VERSION = 1

pattern VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_FLOAT16_INT8_EXTENSION_NAME = Ptr ("VK_KHR_shader_float16_int8\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_float16_int8 where

#endif