{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_memory_priority

module Vulkan.Ext.VK_EXT_memory_priority
  ( pattern VK_EXT_MEMORY_PRIORITY_SPEC_VERSION
  , pattern VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_PRIORITY_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_MEMORY_PRIORITY_ALLOCATE_INFO_EXT
  , VkPhysicalDeviceMemoryPriorityFeaturesEXT (..)
  , VkMemoryPriorityAllocateInfoEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkMemoryPriorityAllocateInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryPriorityFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_MEMORY_PRIORITY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_MEMORY_PRIORITY_SPEC_VERSION = 1

pattern VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME :: CString
pattern VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_MEMORY_PRIORITY_EXTENSION_NAME = Ptr ("VK_EXT_memory_priority\0"##)

#else

module Vulkan.Ext.VK_EXT_memory_priority where

#endif