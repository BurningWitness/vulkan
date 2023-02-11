{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_FUCHSIA_buffer_collection

module Vulkan.Ext.VK_FUCHSIA_buffer_collection
  ( pattern VK_FUCHSIA_BUFFER_COLLECTION_SPEC_VERSION
  , pattern VK_FUCHSIA_BUFFER_COLLECTION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CREATE_INFO_FUCHSIA
  , pattern VK_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA_EXT
  , pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_BUFFER_COLLECTION_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_BUFFER_COLLECTION_IMAGE_CREATE_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_BUFFER_COLLECTION_PROPERTIES_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_BUFFER_CONSTRAINTS_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_BUFFER_COLLECTION_BUFFER_CREATE_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_IMAGE_CONSTRAINTS_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_IMAGE_FORMAT_CONSTRAINTS_INFO_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_SYSMEM_COLOR_SPACE_FUCHSIA
  , pattern VK_STRUCTURE_TYPE_BUFFER_COLLECTION_CONSTRAINTS_INFO_FUCHSIA
  , VkBufferCollectionFUCHSIA_T
  , VkBufferCollectionFUCHSIA
  , VkBufferCollectionCreateInfoFUCHSIA (..)
  , VkImportMemoryBufferCollectionFUCHSIA (..)
  , VkBufferCollectionImageCreateInfoFUCHSIA (..)
  , VkBufferConstraintsInfoFUCHSIA (..)
  , VkBufferCollectionBufferCreateInfoFUCHSIA (..)
  , VkBufferCollectionPropertiesFUCHSIA (..)
  , VkImageFormatConstraintsFlagsFUCHSIA
  , VkSysmemColorSpaceFUCHSIA (..)
  , VkImageConstraintsInfoFlagBitsFUCHSIA
  , pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_RARELY_FUCHSIA
  , pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_READ_OFTEN_FUCHSIA
  , pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_RARELY_FUCHSIA
  , pattern VK_IMAGE_CONSTRAINTS_INFO_CPU_WRITE_OFTEN_FUCHSIA
  , pattern VK_IMAGE_CONSTRAINTS_INFO_PROTECTED_OPTIONAL_FUCHSIA
  , VkImageConstraintsInfoFlagsFUCHSIA
  , VkImageConstraintsInfoFUCHSIA (..)
  , VkImageFormatConstraintsInfoFUCHSIA (..)
  , VkBufferCollectionConstraintsInfoFUCHSIA (..)
  , VkCreateBufferCollectionFUCHSIA
  , vkFunCreateBufferCollectionFUCHSIA
  , VkSetBufferCollectionImageConstraintsFUCHSIA
  , vkFunSetBufferCollectionImageConstraintsFUCHSIA
  , VkSetBufferCollectionBufferConstraintsFUCHSIA
  , vkFunSetBufferCollectionBufferConstraintsFUCHSIA
  , VkDestroyBufferCollectionFUCHSIA
  , vkFunDestroyBufferCollectionFUCHSIA
  , VkGetBufferCollectionPropertiesFUCHSIA
  , vkFunGetBufferCollectionPropertiesFUCHSIA
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkImageConstraintsInfoFlagBitsFUCHSIA
import Vulkan.Types.Enum.VkImageConstraintsInfoFlagsFUCHSIA
import Vulkan.Types.Enum.VkImageFormatConstraintsFlagsFUCHSIA
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferCollectionBufferCreateInfoFUCHSIA
import Vulkan.Types.Struct.VkBufferCollectionConstraintsInfoFUCHSIA
import Vulkan.Types.Struct.VkBufferCollectionCreateInfoFUCHSIA
import Vulkan.Types.Struct.VkBufferCollectionImageCreateInfoFUCHSIA
import Vulkan.Types.Struct.VkBufferCollectionPropertiesFUCHSIA
import Vulkan.Types.Struct.VkBufferConstraintsInfoFUCHSIA
import Vulkan.Types.Struct.VkImageConstraintsInfoFUCHSIA
import Vulkan.Types.Struct.VkImageFormatConstraintsInfoFUCHSIA
import Vulkan.Types.Struct.VkImportMemoryBufferCollectionFUCHSIA
import Vulkan.Types.Struct.VkSysmemColorSpaceFUCHSIA
import Vulkan.Types.Command.VkCreateBufferCollectionFUCHSIA
import Vulkan.Types.Command.VkDestroyBufferCollectionFUCHSIA
import Vulkan.Types.Command.VkGetBufferCollectionPropertiesFUCHSIA
import Vulkan.Types.Command.VkSetBufferCollectionBufferConstraintsFUCHSIA
import Vulkan.Types.Command.VkSetBufferCollectionImageConstraintsFUCHSIA
import Vulkan.Types.VkFun



pattern VK_FUCHSIA_BUFFER_COLLECTION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_FUCHSIA_BUFFER_COLLECTION_SPEC_VERSION = 2

pattern VK_FUCHSIA_BUFFER_COLLECTION_EXTENSION_NAME :: CString
pattern VK_FUCHSIA_BUFFER_COLLECTION_EXTENSION_NAME <- (const False -> True)
  where
    VK_FUCHSIA_BUFFER_COLLECTION_EXTENSION_NAME = Ptr ("VK_FUCHSIA_buffer_collection\0"##)

#else

module Vulkan.Ext.VK_FUCHSIA_buffer_collection where

#endif