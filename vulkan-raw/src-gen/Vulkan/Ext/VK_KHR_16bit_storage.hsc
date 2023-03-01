{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_16bit_storage

module Vulkan.Ext.VK_KHR_16bit_storage
  ( pattern VK_KHR_16BIT_STORAGE_SPEC_VERSION
  , pattern VK_KHR_16BIT_STORAGE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_16BIT_STORAGE_FEATURES_KHR
  , VkPhysicalDevice16BitStorageFeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevice16BitStorageFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_16BIT_STORAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_16BIT_STORAGE_SPEC_VERSION = 1

pattern VK_KHR_16BIT_STORAGE_EXTENSION_NAME :: CString
pattern VK_KHR_16BIT_STORAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_16BIT_STORAGE_EXTENSION_NAME = Ptr ("VK_KHR_16bit_storage\0"##)

#else

module Vulkan.Ext.VK_KHR_16bit_storage where

#endif