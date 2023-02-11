{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_fd

module Vulkan.Ext.VK_KHR_external_fence_fd
  ( pattern VK_KHR_EXTERNAL_FENCE_FD_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_FENCE_FD_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_FENCE_GET_FD_INFO_KHR
  , VkImportFenceFdInfoKHR (..)
  , VkFenceGetFdInfoKHR (..)
  , VkImportFenceFdKHR
  , vkFunImportFenceFdKHR
  , VkGetFenceFdKHR
  , vkFunGetFenceFdKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFenceGetFdInfoKHR
import Vulkan.Types.Struct.VkImportFenceFdInfoKHR
import Vulkan.Types.Command.VkGetFenceFdKHR
import Vulkan.Types.Command.VkImportFenceFdKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_FENCE_FD_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_FENCE_FD_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_FENCE_FD_EXTENSION_NAME = Ptr ("VK_KHR_external_fence_fd\0"##)

#else

module Vulkan.Ext.VK_KHR_external_fence_fd where

#endif