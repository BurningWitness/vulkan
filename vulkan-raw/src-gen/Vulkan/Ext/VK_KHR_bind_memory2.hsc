{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_bind_memory2

module Vulkan.Ext.VK_KHR_bind_memory2
  ( pattern VK_KHR_BIND_MEMORY_2_SPEC_VERSION
  , pattern VK_KHR_BIND_MEMORY_2_EXTENSION_NAME
  , VkBindBufferMemory2KHR
  , vkFunBindBufferMemory2KHR
  , VkBindImageMemory2KHR
  , vkFunBindImageMemory2KHR
  , pattern VK_STRUCTURE_TYPE_BIND_BUFFER_MEMORY_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_BIND_IMAGE_MEMORY_INFO_KHR
  , pattern VK_IMAGE_CREATE_ALIAS_BIT_KHR
  , VkBindBufferMemoryInfoKHR
  , VkBindImageMemoryInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBindBufferMemoryInfoKHR
import Vulkan.Types.Struct.VkBindImageMemoryInfoKHR
import Vulkan.Types.Command.VkBindBufferMemory2KHR
import Vulkan.Types.Command.VkBindImageMemory2KHR
import Vulkan.Types.VkFun



pattern VK_KHR_BIND_MEMORY_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_BIND_MEMORY_2_SPEC_VERSION = 1

pattern VK_KHR_BIND_MEMORY_2_EXTENSION_NAME :: CString
pattern VK_KHR_BIND_MEMORY_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_BIND_MEMORY_2_EXTENSION_NAME = Ptr ("VK_KHR_bind_memory2\0"##)

#else

module Vulkan.Ext.VK_KHR_bind_memory2 where

#endif