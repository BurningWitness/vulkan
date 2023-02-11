{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Ext.VK_NV_copy_memory_indirect
  ( pattern VK_NV_COPY_MEMORY_INDIRECT_SPEC_VERSION
  , pattern VK_NV_COPY_MEMORY_INDIRECT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COPY_MEMORY_INDIRECT_PROPERTIES_NV
  , VkCopyMemoryIndirectCommandNV (..)
  , VkCopyMemoryToImageIndirectCommandNV (..)
  , VkPhysicalDeviceCopyMemoryIndirectFeaturesNV (..)
  , VkPhysicalDeviceCopyMemoryIndirectPropertiesNV (..)
  , VkCmdCopyMemoryIndirectNV
  , vkFunCmdCopyMemoryIndirectNV
  , VkCmdCopyMemoryToImageIndirectNV
  , vkFunCmdCopyMemoryToImageIndirectNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkCopyMemoryIndirectCommandNV
import Vulkan.Types.Struct.VkCopyMemoryToImageIndirectCommandNV
import Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceCopyMemoryIndirectPropertiesNV
import Vulkan.Types.Command.VkCmdCopyMemoryIndirectNV
import Vulkan.Types.Command.VkCmdCopyMemoryToImageIndirectNV
import Vulkan.Types.VkFun



pattern VK_NV_COPY_MEMORY_INDIRECT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_COPY_MEMORY_INDIRECT_SPEC_VERSION = 1

pattern VK_NV_COPY_MEMORY_INDIRECT_EXTENSION_NAME :: CString
pattern VK_NV_COPY_MEMORY_INDIRECT_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_COPY_MEMORY_INDIRECT_EXTENSION_NAME = Ptr ("VK_NV_copy_memory_indirect\0"##)

#else

module Vulkan.Ext.VK_NV_copy_memory_indirect where

#endif