{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_memory_decompression

module Vulkan.Ext.VK_NV_memory_decompression
  ( pattern VK_NV_MEMORY_DECOMPRESSION_SPEC_VERSION
  , pattern VK_NV_MEMORY_DECOMPRESSION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_MEMORY_DECOMPRESSION_PROPERTIES_NV
  , VkMemoryDecompressionMethodFlagBitsNV
  , pattern VK_MEMORY_DECOMPRESSION_METHOD_GDEFLATE_1_0_BIT_NV
  , VkMemoryDecompressionMethodFlagsNV
  , VkDecompressMemoryRegionNV (..)
  , VkPhysicalDeviceMemoryDecompressionFeaturesNV (..)
  , VkPhysicalDeviceMemoryDecompressionPropertiesNV (..)
  , VkCmdDecompressMemoryNV
  , vkFunCmdDecompressMemoryNV
  , VkCmdDecompressMemoryIndirectCountNV
  , vkFunCmdDecompressMemoryIndirectCountNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkMemoryDecompressionMethodFlagBitsNV
import Vulkan.Types.Enum.VkMemoryDecompressionMethodFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDecompressMemoryRegionNV
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryDecompressionFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryDecompressionPropertiesNV
import Vulkan.Types.Command.VkCmdDecompressMemoryIndirectCountNV
import Vulkan.Types.Command.VkCmdDecompressMemoryNV
import Vulkan.Types.VkFun



pattern VK_NV_MEMORY_DECOMPRESSION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_MEMORY_DECOMPRESSION_SPEC_VERSION = 1

pattern VK_NV_MEMORY_DECOMPRESSION_EXTENSION_NAME :: CString
pattern VK_NV_MEMORY_DECOMPRESSION_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_MEMORY_DECOMPRESSION_EXTENSION_NAME = Ptr ("VK_NV_memory_decompression\0"##)

#else

module Vulkan.Ext.VK_NV_memory_decompression where

#endif