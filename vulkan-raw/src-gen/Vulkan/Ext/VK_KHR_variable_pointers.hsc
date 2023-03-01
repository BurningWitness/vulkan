{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_variable_pointers

module Vulkan.Ext.VK_KHR_variable_pointers
  ( pattern VK_KHR_VARIABLE_POINTERS_SPEC_VERSION
  , pattern VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTERS_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_VARIABLE_POINTER_FEATURES_KHR
  , VkPhysicalDeviceVariablePointerFeaturesKHR
  , VkPhysicalDeviceVariablePointersFeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceVariablePointerFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceVariablePointersFeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_VARIABLE_POINTERS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_VARIABLE_POINTERS_SPEC_VERSION = 1

pattern VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME :: CString
pattern VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_VARIABLE_POINTERS_EXTENSION_NAME = Ptr ("VK_KHR_variable_pointers\0"##)

#else

module Vulkan.Ext.VK_KHR_variable_pointers where

#endif