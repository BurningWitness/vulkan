{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_device_coherent_memory

module Vulkan.Ext.VK_AMD_device_coherent_memory
  ( pattern VK_AMD_DEVICE_COHERENT_MEMORY_SPEC_VERSION
  , pattern VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME
  , pattern VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD
  , pattern VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COHERENT_MEMORY_FEATURES_AMD
  , VkPhysicalDeviceCoherentMemoryFeaturesAMD (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkMemoryPropertyFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceCoherentMemoryFeaturesAMD
import Vulkan.Types.VkFun



pattern VK_AMD_DEVICE_COHERENT_MEMORY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_DEVICE_COHERENT_MEMORY_SPEC_VERSION = 1

pattern VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME :: CString
pattern VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_DEVICE_COHERENT_MEMORY_EXTENSION_NAME = Ptr ("VK_AMD_device_coherent_memory\0"##)

#else

module Vulkan.Ext.VK_AMD_device_coherent_memory where

#endif