{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dedicated_allocation

module Vulkan.Ext.VK_KHR_dedicated_allocation
  ( pattern VK_KHR_DEDICATED_ALLOCATION_SPEC_VERSION
  , pattern VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_MEMORY_DEDICATED_REQUIREMENTS_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_DEDICATED_ALLOCATE_INFO_KHR
  , VkMemoryDedicatedRequirementsKHR
  , VkMemoryDedicatedAllocateInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMemoryDedicatedAllocateInfoKHR
import Vulkan.Types.Struct.VkMemoryDedicatedRequirementsKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DEDICATED_ALLOCATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DEDICATED_ALLOCATION_SPEC_VERSION = 3

pattern VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME :: CString
pattern VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DEDICATED_ALLOCATION_EXTENSION_NAME = Ptr ("VK_KHR_dedicated_allocation\0"##)

#else

module Vulkan.Ext.VK_KHR_dedicated_allocation where

#endif