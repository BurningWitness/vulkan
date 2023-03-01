{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_8bit_storage

module Vulkan.Ext.VK_KHR_8bit_storage
  ( pattern VK_KHR_8BIT_STORAGE_SPEC_VERSION
  , pattern VK_KHR_8BIT_STORAGE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_8BIT_STORAGE_FEATURES_KHR
  , VkPhysicalDevice8BitStorageFeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevice8BitStorageFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_8BIT_STORAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_8BIT_STORAGE_SPEC_VERSION = 1

pattern VK_KHR_8BIT_STORAGE_EXTENSION_NAME :: CString
pattern VK_KHR_8BIT_STORAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_8BIT_STORAGE_EXTENSION_NAME = Ptr ("VK_KHR_8bit_storage\0"##)

#else

module Vulkan.Ext.VK_KHR_8bit_storage where

#endif