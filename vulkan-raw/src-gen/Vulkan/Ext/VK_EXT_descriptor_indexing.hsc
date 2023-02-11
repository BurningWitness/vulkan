{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_indexing

module Vulkan.Ext.VK_EXT_descriptor_indexing
  ( pattern VK_EXT_DESCRIPTOR_INDEXING_SPEC_VERSION
  , pattern VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_BINDING_FLAGS_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DESCRIPTOR_INDEXING_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_ALLOCATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_SET_VARIABLE_DESCRIPTOR_COUNT_LAYOUT_SUPPORT_EXT
  , pattern VK_DESCRIPTOR_BINDING_UPDATE_AFTER_BIND_BIT_EXT
  , pattern VK_DESCRIPTOR_BINDING_UPDATE_UNUSED_WHILE_PENDING_BIT_EXT
  , pattern VK_DESCRIPTOR_BINDING_PARTIALLY_BOUND_BIT_EXT
  , pattern VK_DESCRIPTOR_BINDING_VARIABLE_DESCRIPTOR_COUNT_BIT_EXT
  , pattern VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT
  , pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT
  , pattern VK_ERROR_FRAGMENTATION_EXT
  , VkDescriptorSetLayoutBindingFlagsCreateInfoEXT
  , VkPhysicalDeviceDescriptorIndexingFeaturesEXT
  , VkPhysicalDeviceDescriptorIndexingPropertiesEXT
  , VkDescriptorSetVariableDescriptorCountAllocateInfoEXT
  , VkDescriptorSetVariableDescriptorCountLayoutSupportEXT
  , VkDescriptorBindingFlagBitsEXT
  , VkDescriptorBindingFlagsEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDescriptorBindingFlagBits
import Vulkan.Types.Enum.VkDescriptorBindingFlagBitsEXT
import Vulkan.Types.Enum.VkDescriptorBindingFlagsEXT
import Vulkan.Types.Enum.VkDescriptorPoolCreateFlagBits
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDescriptorSetLayoutBindingFlagsCreateInfoEXT
import Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountAllocateInfoEXT
import Vulkan.Types.Struct.VkDescriptorSetVariableDescriptorCountLayoutSupportEXT
import Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceDescriptorIndexingPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DESCRIPTOR_INDEXING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DESCRIPTOR_INDEXING_SPEC_VERSION = 2

pattern VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME :: CString
pattern VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DESCRIPTOR_INDEXING_EXTENSION_NAME = Ptr ("VK_EXT_descriptor_indexing\0"##)

#else

module Vulkan.Ext.VK_EXT_descriptor_indexing where

#endif