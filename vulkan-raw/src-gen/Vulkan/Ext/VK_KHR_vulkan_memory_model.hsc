{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_vulkan_memory_model

module Vulkan.Ext.VK_KHR_vulkan_memory_model
  ( pattern VK_KHR_VULKAN_MEMORY_MODEL_SPEC_VERSION
  , pattern VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VULKAN_MEMORY_MODEL_FEATURES_KHR
  , VkPhysicalDeviceVulkanMemoryModelFeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceVulkanMemoryModelFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VULKAN_MEMORY_MODEL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VULKAN_MEMORY_MODEL_SPEC_VERSION = 3

pattern VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME :: CString
pattern VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VULKAN_MEMORY_MODEL_EXTENSION_NAME = Ptr ("VK_KHR_vulkan_memory_model\0"##)

#else

module Vulkan.Ext.VK_KHR_vulkan_memory_model where

#endif