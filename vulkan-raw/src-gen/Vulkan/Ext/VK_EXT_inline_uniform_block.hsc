{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_inline_uniform_block

module Vulkan.Ext.VK_EXT_inline_uniform_block
  ( pattern VK_EXT_INLINE_UNIFORM_BLOCK_SPEC_VERSION
  , pattern VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME
  , pattern VK_DESCRIPTOR_TYPE_INLINE_UNIFORM_BLOCK_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_INLINE_UNIFORM_BLOCK_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET_INLINE_UNIFORM_BLOCK_EXT
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_INLINE_UNIFORM_BLOCK_CREATE_INFO_EXT
  , VkPhysicalDeviceInlineUniformBlockFeaturesEXT
  , VkPhysicalDeviceInlineUniformBlockPropertiesEXT
  , VkWriteDescriptorSetInlineUniformBlockEXT
  , VkDescriptorPoolInlineUniformBlockCreateInfoEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDescriptorPoolInlineUniformBlockCreateInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceInlineUniformBlockPropertiesEXT
import Vulkan.Types.Struct.VkWriteDescriptorSetInlineUniformBlockEXT
import Vulkan.Types.VkFun



pattern VK_EXT_INLINE_UNIFORM_BLOCK_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_INLINE_UNIFORM_BLOCK_SPEC_VERSION = 1

pattern VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME :: CString
pattern VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_INLINE_UNIFORM_BLOCK_EXTENSION_NAME = Ptr ("VK_EXT_inline_uniform_block\0"##)

#else

module Vulkan.Ext.VK_EXT_inline_uniform_block where

#endif