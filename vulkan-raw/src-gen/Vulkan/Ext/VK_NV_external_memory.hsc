{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory

module Vulkan.Ext.VK_NV_external_memory
  ( pattern VK_NV_EXTERNAL_MEMORY_SPEC_VERSION
  , pattern VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_MEMORY_IMAGE_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_ALLOCATE_INFO_NV
  , VkExternalMemoryImageCreateInfoNV (..)
  , VkExportMemoryAllocateInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportMemoryAllocateInfoNV
import Vulkan.Types.Struct.VkExternalMemoryImageCreateInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_EXTERNAL_MEMORY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_EXTERNAL_MEMORY_SPEC_VERSION = 1

pattern VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME :: CString
pattern VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_EXTERNAL_MEMORY_EXTENSION_NAME = Ptr ("VK_NV_external_memory\0"##)

#else

module Vulkan.Ext.VK_NV_external_memory where

#endif