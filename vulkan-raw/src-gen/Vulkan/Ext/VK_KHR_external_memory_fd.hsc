{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_fd

module Vulkan.Ext.VK_KHR_external_memory_fd
  ( pattern VK_KHR_EXTERNAL_MEMORY_FD_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_FD_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_FD_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_GET_FD_INFO_KHR
  , VkImportMemoryFdInfoKHR (..)
  , VkMemoryFdPropertiesKHR (..)
  , VkMemoryGetFdInfoKHR (..)
  , VkGetMemoryFdKHR
  , vkFunGetMemoryFdKHR
  , VkGetMemoryFdPropertiesKHR
  , vkFunGetMemoryFdPropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImportMemoryFdInfoKHR
import Vulkan.Types.Struct.VkMemoryFdPropertiesKHR
import Vulkan.Types.Struct.VkMemoryGetFdInfoKHR
import Vulkan.Types.Command.VkGetMemoryFdKHR
import Vulkan.Types.Command.VkGetMemoryFdPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_MEMORY_FD_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_MEMORY_FD_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_MEMORY_FD_EXTENSION_NAME = Ptr ("VK_KHR_external_memory_fd\0"##)

#else

module Vulkan.Ext.VK_KHR_external_memory_fd where

#endif