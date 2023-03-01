{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_cooperative_matrix

module Vulkan.Ext.VK_NV_cooperative_matrix
  ( pattern VK_NV_COOPERATIVE_MATRIX_SPEC_VERSION
  , pattern VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_COOPERATIVE_MATRIX_PROPERTIES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COOPERATIVE_MATRIX_PROPERTIES_NV
  , VkCooperativeMatrixPropertiesNV (..)
  , VkScopeNV
  , pattern VK_SCOPE_DEVICE_NV
  , pattern VK_SCOPE_WORKGROUP_NV
  , pattern VK_SCOPE_SUBGROUP_NV
  , pattern VK_SCOPE_QUEUE_FAMILY_NV
  , VkComponentTypeNV
  , pattern VK_COMPONENT_TYPE_FLOAT16_NV
  , pattern VK_COMPONENT_TYPE_FLOAT32_NV
  , pattern VK_COMPONENT_TYPE_FLOAT64_NV
  , pattern VK_COMPONENT_TYPE_SINT8_NV
  , pattern VK_COMPONENT_TYPE_SINT16_NV
  , pattern VK_COMPONENT_TYPE_SINT32_NV
  , pattern VK_COMPONENT_TYPE_SINT64_NV
  , pattern VK_COMPONENT_TYPE_UINT8_NV
  , pattern VK_COMPONENT_TYPE_UINT16_NV
  , pattern VK_COMPONENT_TYPE_UINT32_NV
  , pattern VK_COMPONENT_TYPE_UINT64_NV
  , VkPhysicalDeviceCooperativeMatrixFeaturesNV (..)
  , VkPhysicalDeviceCooperativeMatrixPropertiesNV (..)
  , VkGetPhysicalDeviceCooperativeMatrixPropertiesNV
  , vkFunGetPhysicalDeviceCooperativeMatrixPropertiesNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkComponentTypeNV
import Vulkan.Types.Enum.VkScopeNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCooperativeMatrixPropertiesNV
import Vulkan.Types.Struct.VkPhysicalDeviceCooperativeMatrixFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceCooperativeMatrixPropertiesNV
import Vulkan.Types.Command.VkGetPhysicalDeviceCooperativeMatrixPropertiesNV
import Vulkan.Types.VkFun



pattern VK_NV_COOPERATIVE_MATRIX_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_COOPERATIVE_MATRIX_SPEC_VERSION = 1

pattern VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME :: CString
pattern VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_COOPERATIVE_MATRIX_EXTENSION_NAME = Ptr ("VK_NV_cooperative_matrix\0"##)

#else

module Vulkan.Ext.VK_NV_cooperative_matrix where

#endif