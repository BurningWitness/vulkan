{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory

module Vulkan.Ext.VK_KHR_external_memory
  ( pattern VK_KHR_EXTERNAL_MEMORY_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_BUFFER_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_KHR
  , pattern VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR
  , pattern VK_QUEUE_FAMILY_EXTERNAL_KHR
  , VkExternalMemoryImageCreateInfoKHR
  , VkExternalMemoryBufferCreateInfoKHR
  , VkExportMemoryAllocateInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportMemoryAllocateInfoKHR
import Vulkan.Types.Struct.VkExternalMemoryBufferCreateInfoKHR
import Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_MEMORY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_MEMORY_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_MEMORY_EXTENSION_NAME = Ptr ("VK_KHR_external_memory\0"##)

#else

module Vulkan.Ext.VK_KHR_external_memory where

#endif