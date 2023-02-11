{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_vertex_attribute_divisor

module Vulkan.Ext.VK_EXT_vertex_attribute_divisor
  ( pattern VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_SPEC_VERSION
  , pattern VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_DIVISOR_STATE_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VERTEX_ATTRIBUTE_DIVISOR_FEATURES_EXT
  , VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT (..)
  , VkVertexInputBindingDivisorDescriptionEXT (..)
  , VkPipelineVertexInputDivisorStateCreateInfoEXT (..)
  , VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceVertexAttributeDivisorFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceVertexAttributeDivisorPropertiesEXT
import Vulkan.Types.Struct.VkPipelineVertexInputDivisorStateCreateInfoEXT
import Vulkan.Types.Struct.VkVertexInputBindingDivisorDescriptionEXT
import Vulkan.Types.VkFun



pattern VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_SPEC_VERSION = 3

pattern VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME :: CString
pattern VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_VERTEX_ATTRIBUTE_DIVISOR_EXTENSION_NAME = Ptr ("VK_EXT_vertex_attribute_divisor\0"##)

#else

module Vulkan.Ext.VK_EXT_vertex_attribute_divisor where

#endif