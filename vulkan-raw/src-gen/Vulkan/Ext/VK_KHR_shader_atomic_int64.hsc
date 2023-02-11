{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shader_atomic_int64

module Vulkan.Ext.VK_KHR_shader_atomic_int64
  ( pattern VK_KHR_SHADER_ATOMIC_INT64_SPEC_VERSION
  , pattern VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_ATOMIC_INT64_FEATURES_KHR
  , VkPhysicalDeviceShaderAtomicInt64FeaturesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderAtomicInt64FeaturesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_SHADER_ATOMIC_INT64_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_SHADER_ATOMIC_INT64_SPEC_VERSION = 1

pattern VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME :: CString
pattern VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_SHADER_ATOMIC_INT64_EXTENSION_NAME = Ptr ("VK_KHR_shader_atomic_int64\0"##)

#else

module Vulkan.Ext.VK_KHR_shader_atomic_int64 where

#endif