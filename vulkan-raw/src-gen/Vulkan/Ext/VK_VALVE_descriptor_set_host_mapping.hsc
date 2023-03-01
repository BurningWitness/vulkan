{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_VALVE_descriptor_set_host_mapping

module Vulkan.Ext.VK_VALVE_descriptor_set_host_mapping
  ( pattern VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_SPEC_VERSION
  , pattern VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_SET_HOST_MAPPING_FEATURES_VALVE
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_BINDING_REFERENCE_VALVE
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_HOST_MAPPING_INFO_VALVE
  , VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE (..)
  , VkDescriptorSetBindingReferenceVALVE (..)
  , VkDescriptorSetLayoutHostMappingInfoVALVE (..)
  , VkGetDescriptorSetLayoutHostMappingInfoVALVE
  , vkFunGetDescriptorSetLayoutHostMappingInfoVALVE
  , VkGetDescriptorSetHostMappingVALVE
  , vkFunGetDescriptorSetHostMappingVALVE
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDescriptorSetBindingReferenceVALVE
import Vulkan.Types.Struct.VkDescriptorSetLayoutHostMappingInfoVALVE
import Vulkan.Types.Struct.VkPhysicalDeviceDescriptorSetHostMappingFeaturesVALVE
import Vulkan.Types.Command.VkGetDescriptorSetHostMappingVALVE
import Vulkan.Types.Command.VkGetDescriptorSetLayoutHostMappingInfoVALVE
import Vulkan.Types.VkFun



pattern VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_SPEC_VERSION = 1

pattern VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_EXTENSION_NAME :: CString
pattern VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_EXTENSION_NAME <- (const False -> True)
  where
    VK_VALVE_DESCRIPTOR_SET_HOST_MAPPING_EXTENSION_NAME = Ptr ("VK_VALVE_descriptor_set_host_mapping\0"##)

#else

module Vulkan.Ext.VK_VALVE_descriptor_set_host_mapping where

#endif