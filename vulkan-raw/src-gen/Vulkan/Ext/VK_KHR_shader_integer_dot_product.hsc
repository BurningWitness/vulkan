{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_integer_dot_product

module Vulkan.Ext.VK_KHR_shader_integer_dot_product
  ( pattern VK_KHR_SHADER_INTEGER_DOT_PRODUCT_SPEC_VERSION
  , pattern VK_KHR_SHADER_INTEGER_DOT_PRODUCT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_INTEGER_DOT_PRODUCT_PROPERTIES_KHR
  , VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR
  , VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceShaderIntegerDotProductPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_INTEGER_DOT_PRODUCT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_INTEGER_DOT_PRODUCT_SPEC_VERSION = 1

pattern VK_KHR_SHADER_INTEGER_DOT_PRODUCT_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_INTEGER_DOT_PRODUCT_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_INTEGER_DOT_PRODUCT_EXTENSION_NAME = Ptr ("VK_KHR_shader_integer_dot_product\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_integer_dot_product where

#endif