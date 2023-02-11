{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_mutable_descriptor_type

module Vulkan.Ext.VK_EXT_mutable_descriptor_type
  ( pattern VK_EXT_MUTABLE_DESCRIPTOR_TYPE_SPEC_VERSION
  , pattern VK_EXT_MUTABLE_DESCRIPTOR_TYPE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MUTABLE_DESCRIPTOR_TYPE_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_MUTABLE_DESCRIPTOR_TYPE_CREATE_INFO_EXT
  , pattern VK_DESCRIPTOR_TYPE_MUTABLE_EXT
  , pattern VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_EXT
  , pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_EXT
  , VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT (..)
  , VkMutableDescriptorTypeListEXT (..)
  , VkMutableDescriptorTypeCreateInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDescriptorPoolCreateFlagBits
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlagBits
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMutableDescriptorTypeCreateInfoEXT
import Vulkan.Types.Struct.VkMutableDescriptorTypeListEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMutableDescriptorTypeFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_MUTABLE_DESCRIPTOR_TYPE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_MUTABLE_DESCRIPTOR_TYPE_SPEC_VERSION = 1

pattern VK_EXT_MUTABLE_DESCRIPTOR_TYPE_EXTENSION_NAME :: CString
pattern VK_EXT_MUTABLE_DESCRIPTOR_TYPE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_MUTABLE_DESCRIPTOR_TYPE_EXTENSION_NAME = Ptr ("VK_EXT_mutable_descriptor_type\0"##)

#else

module Vulkan.Ext.VK_EXT_mutable_descriptor_type where

#endif