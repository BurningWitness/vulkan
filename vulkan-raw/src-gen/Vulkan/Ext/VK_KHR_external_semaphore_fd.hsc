{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_fd

module Vulkan.Ext.VK_KHR_external_semaphore_fd
  ( pattern VK_KHR_EXTERNAL_SEMAPHORE_FD_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_SEMAPHORE_FD_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_SEMAPHORE_GET_FD_INFO_KHR
  , VkImportSemaphoreFdInfoKHR (..)
  , VkSemaphoreGetFdInfoKHR (..)
  , VkImportSemaphoreFdKHR
  , vkFunImportSemaphoreFdKHR
  , VkGetSemaphoreFdKHR
  , vkFunGetSemaphoreFdKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImportSemaphoreFdInfoKHR
import Vulkan.Types.Struct.VkSemaphoreGetFdInfoKHR
import Vulkan.Types.Command.VkGetSemaphoreFdKHR
import Vulkan.Types.Command.VkImportSemaphoreFdKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_SEMAPHORE_FD_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_SEMAPHORE_FD_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_SEMAPHORE_FD_EXTENSION_NAME = Ptr ("VK_KHR_external_semaphore_fd\0"##)

#else

module Vulkan.Ext.VK_KHR_external_semaphore_fd where

#endif