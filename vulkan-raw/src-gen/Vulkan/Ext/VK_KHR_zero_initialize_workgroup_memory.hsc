{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_zero_initialize_workgroup_memory

module Vulkan.Ext.VK_KHR_zero_initialize_workgroup_memory
  ( pattern VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_SPEC_VERSION
  , pattern VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ZERO_INITIALIZE_WORKGROUP_MEMORY_FEATURES_KHR
  , VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceZeroInitializeWorkgroupMemoryFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_SPEC_VERSION = 1

pattern VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_EXTENSION_NAME :: CString
pattern VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_ZERO_INITIALIZE_WORKGROUP_MEMORY_EXTENSION_NAME = Ptr ("VK_KHR_zero_initialize_workgroup_memory\0"##)

#else

module Vulkan.Ext.VK_KHR_zero_initialize_workgroup_memory where

#endif