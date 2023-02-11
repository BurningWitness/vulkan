{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence

module Vulkan.Ext.VK_KHR_external_fence
  ( pattern VK_KHR_EXTERNAL_FENCE_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_EXPORT_FENCE_CREATE_INFO_KHR
  , VkFenceImportFlagsKHR
  , VkFenceImportFlagBitsKHR
  , pattern VK_FENCE_IMPORT_TEMPORARY_BIT_KHR
  , VkExportFenceCreateInfoKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFenceImportFlagBits
import Vulkan.Types.Enum.VkFenceImportFlagBitsKHR
import Vulkan.Types.Enum.VkFenceImportFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportFenceCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_FENCE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_FENCE_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_FENCE_EXTENSION_NAME = Ptr ("VK_KHR_external_fence\0"##)

#else

module Vulkan.Ext.VK_KHR_external_fence where

#endif