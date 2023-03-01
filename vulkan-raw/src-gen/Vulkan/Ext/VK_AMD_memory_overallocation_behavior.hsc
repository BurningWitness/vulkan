{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_memory_overallocation_behavior

module Vulkan.Ext.VK_AMD_memory_overallocation_behavior
  ( pattern VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_SPEC_VERSION
  , pattern VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DEVICE_MEMORY_OVERALLOCATION_CREATE_INFO_AMD
  , VkMemoryOverallocationBehaviorAMD
  , pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_DEFAULT_AMD
  , pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_ALLOWED_AMD
  , pattern VK_MEMORY_OVERALLOCATION_BEHAVIOR_DISALLOWED_AMD
  , VkDeviceMemoryOverallocationCreateInfoAMD (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkMemoryOverallocationBehaviorAMD
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceMemoryOverallocationCreateInfoAMD
import Vulkan.Types.VkFun



pattern VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_SPEC_VERSION = 1

pattern VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME :: CString
pattern VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_MEMORY_OVERALLOCATION_BEHAVIOR_EXTENSION_NAME = Ptr ("VK_AMD_memory_overallocation_behavior\0"##)

#else

module Vulkan.Ext.VK_AMD_memory_overallocation_behavior where

#endif