{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_dedicated_allocation

module Vulkan.Ext.VK_NV_dedicated_allocation
  ( pattern VK_NV_DEDICATED_ALLOCATION_SPEC_VERSION
  , pattern VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_IMAGE_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_BUFFER_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_DEDICATED_ALLOCATION_MEMORY_ALLOCATE_INFO_NV
  , VkDedicatedAllocationImageCreateInfoNV (..)
  , VkDedicatedAllocationBufferCreateInfoNV (..)
  , VkDedicatedAllocationMemoryAllocateInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDedicatedAllocationBufferCreateInfoNV
import Vulkan.Types.Struct.VkDedicatedAllocationImageCreateInfoNV
import Vulkan.Types.Struct.VkDedicatedAllocationMemoryAllocateInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_DEDICATED_ALLOCATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_DEDICATED_ALLOCATION_SPEC_VERSION = 1

pattern VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME :: CString
pattern VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_DEDICATED_ALLOCATION_EXTENSION_NAME = Ptr ("VK_NV_dedicated_allocation\0"##)

#else

module Vulkan.Ext.VK_NV_dedicated_allocation where

#endif