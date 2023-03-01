{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_win32

module Vulkan.Ext.VK_KHR_external_semaphore_win32
  ( pattern VK_KHR_EXTERNAL_SEMAPHORE_WIN32_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_WIN32_HANDLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_D3D12_FENCE_SUBMIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_GET_WIN32_HANDLE_INFO_KHR
  , VkImportSemaphoreWin32HandleInfoKHR (..)
  , VkExportSemaphoreWin32HandleInfoKHR (..)
  , VkD3D12FenceSubmitInfoKHR (..)
  , VkSemaphoreGetWin32HandleInfoKHR (..)
  , VkImportSemaphoreWin32HandleKHR
  , vkFunImportSemaphoreWin32HandleKHR
  , VkGetSemaphoreWin32HandleKHR
  , vkFunGetSemaphoreWin32HandleKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkD3D12FenceSubmitInfoKHR
import Vulkan.Types.Struct.VkExportSemaphoreWin32HandleInfoKHR
import Vulkan.Types.Struct.VkImportSemaphoreWin32HandleInfoKHR
import Vulkan.Types.Struct.VkSemaphoreGetWin32HandleInfoKHR
import Vulkan.Types.Command.VkGetSemaphoreWin32HandleKHR
import Vulkan.Types.Command.VkImportSemaphoreWin32HandleKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_SEMAPHORE_WIN32_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_SEMAPHORE_WIN32_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_SEMAPHORE_WIN32_EXTENSION_NAME = Ptr ("VK_KHR_external_semaphore_win32\0"##)

#else

module Vulkan.Ext.VK_KHR_external_semaphore_win32 where

#endif