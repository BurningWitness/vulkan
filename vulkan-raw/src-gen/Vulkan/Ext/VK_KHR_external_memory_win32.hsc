{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_win32

module Vulkan.Ext.VK_KHR_external_memory_win32
  ( pattern VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_WIN32_HANDLE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_GET_WIN32_HANDLE_INFO_KHR
  , VkImportMemoryWin32HandleInfoKHR (..)
  , VkExportMemoryWin32HandleInfoKHR (..)
  , VkMemoryWin32HandlePropertiesKHR (..)
  , VkMemoryGetWin32HandleInfoKHR (..)
  , VkGetMemoryWin32HandleKHR
  , vkFunGetMemoryWin32HandleKHR
  , VkGetMemoryWin32HandlePropertiesKHR
  , vkFunGetMemoryWin32HandlePropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoKHR
import Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoKHR
import Vulkan.Types.Struct.VkMemoryGetWin32HandleInfoKHR
import Vulkan.Types.Struct.VkMemoryWin32HandlePropertiesKHR
import Vulkan.Types.Command.VkGetMemoryWin32HandleKHR
import Vulkan.Types.Command.VkGetMemoryWin32HandlePropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_MEMORY_WIN32_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME = Ptr ("VK_KHR_external_memory_win32\0"##)

#else

module Vulkan.Ext.VK_KHR_external_memory_win32 where

#endif