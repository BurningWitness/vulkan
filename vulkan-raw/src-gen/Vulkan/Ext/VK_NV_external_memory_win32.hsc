{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_win32

module Vulkan.Ext.VK_NV_external_memory_win32
  ( pattern VK_NV_EXTERNAL_MEMORY_WIN32_SPEC_VERSION
  , pattern VK_NV_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_WIN32_HANDLE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_EXPORT_MEMORY_WIN32_HANDLE_INFO_NV
  , VkImportMemoryWin32HandleInfoNV (..)
  , VkExportMemoryWin32HandleInfoNV (..)
  , VkGetMemoryWin32HandleNV
  , vkFunGetMemoryWin32HandleNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportMemoryWin32HandleInfoNV
import Vulkan.Types.Struct.VkImportMemoryWin32HandleInfoNV
import Vulkan.Types.Command.VkGetMemoryWin32HandleNV
import Vulkan.Types.VkFun



pattern VK_NV_EXTERNAL_MEMORY_WIN32_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_EXTERNAL_MEMORY_WIN32_SPEC_VERSION = 1

pattern VK_NV_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME :: CString
pattern VK_NV_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_EXTERNAL_MEMORY_WIN32_EXTENSION_NAME = Ptr ("VK_NV_external_memory_win32\0"##)

#else

module Vulkan.Ext.VK_NV_external_memory_win32 where

#endif