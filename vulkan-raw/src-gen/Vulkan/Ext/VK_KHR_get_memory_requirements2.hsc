{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Ext.VK_KHR_get_memory_requirements2
  ( pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION
  , pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_BUFFER_MEMORY_REQUIREMENTS_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_MEMORY_REQUIREMENTS_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_IMAGE_SPARSE_MEMORY_REQUIREMENTS_INFO_2_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_REQUIREMENTS_2_KHR
  , pattern VK_STRUCTURE_TYPE_SPARSE_IMAGE_MEMORY_REQUIREMENTS_2_KHR
  , VkBufferMemoryRequirementsInfo2KHR
  , VkImageMemoryRequirementsInfo2KHR
  , VkImageSparseMemoryRequirementsInfo2KHR
  , VkMemoryRequirements2KHR
  , VkSparseImageMemoryRequirements2KHR
  , VkGetImageMemoryRequirements2KHR
  , vkFunGetImageMemoryRequirements2KHR
  , VkGetBufferMemoryRequirements2KHR
  , vkFunGetBufferMemoryRequirements2KHR
  , VkGetImageSparseMemoryRequirements2KHR
  , vkFunGetImageSparseMemoryRequirements2KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2KHR
import Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2KHR
import Vulkan.Types.Struct.VkImageSparseMemoryRequirementsInfo2KHR
import Vulkan.Types.Struct.VkMemoryRequirements2KHR
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements2KHR
import Vulkan.Types.Command.VkGetBufferMemoryRequirements2KHR
import Vulkan.Types.Command.VkGetImageMemoryRequirements2KHR
import Vulkan.Types.Command.VkGetImageSparseMemoryRequirements2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_SPEC_VERSION = 1

pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME :: CString
pattern VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_GET_MEMORY_REQUIREMENTS_2_EXTENSION_NAME = Ptr ("VK_KHR_get_memory_requirements2\0"##)

#else

module Vulkan.Ext.VK_KHR_get_memory_requirements2 where

#endif