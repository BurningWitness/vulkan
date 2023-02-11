{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_win32

module Vulkan.Ext.VK_KHR_external_fence_win32
  ( pattern VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_FENCE_WIN32_HANDLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXPORT_FENCE_WIN32_HANDLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_FENCE_GET_WIN32_HANDLE_INFO_KHR
  , VkImportFenceWin32HandleInfoKHR (..)
  , VkExportFenceWin32HandleInfoKHR (..)
  , VkFenceGetWin32HandleInfoKHR (..)
  , VkImportFenceWin32HandleKHR
  , vkFunImportFenceWin32HandleKHR
  , VkGetFenceWin32HandleKHR
  , vkFunGetFenceWin32HandleKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportFenceWin32HandleInfoKHR
import Vulkan.Types.Struct.VkFenceGetWin32HandleInfoKHR
import Vulkan.Types.Struct.VkImportFenceWin32HandleInfoKHR
import Vulkan.Types.Command.VkGetFenceWin32HandleKHR
import Vulkan.Types.Command.VkImportFenceWin32HandleKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_FENCE_WIN32_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_FENCE_WIN32_EXTENSION_NAME = Ptr ("VK_KHR_external_fence_win32\0"##)

#else

module Vulkan.Ext.VK_KHR_external_fence_win32 where

#endif