{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore

module Vulkan.Ext.VK_KHR_external_semaphore
  ( pattern VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_EXPORT_SEMAPHORE_CREATE_INFO_KHR
  , VkSemaphoreImportFlagsKHR
  , VkSemaphoreImportFlagBitsKHR
  , pattern VK_SEMAPHORE_IMPORT_TEMPORARY_BIT_KHR
  , VkExportSemaphoreCreateInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkSemaphoreImportFlagBits
import Vulkan.Types.Enum.VkSemaphoreImportFlagBitsKHR
import Vulkan.Types.Enum.VkSemaphoreImportFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportSemaphoreCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_SEMAPHORE_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_SEMAPHORE_EXTENSION_NAME = Ptr ("VK_KHR_external_semaphore\0"##)

#else

module Vulkan.Ext.VK_KHR_external_semaphore where

#endif