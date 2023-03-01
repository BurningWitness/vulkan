{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_image_atomic_int64

module Vulkan.Ext.VK_EXT_shader_image_atomic_int64
  ( pattern VK_EXT_SHADER_IMAGE_ATOMIC_INT64_SPEC_VERSION
  , pattern VK_EXT_SHADER_IMAGE_ATOMIC_INT64_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_SHADER_IMAGE_ATOMIC_INT64_FEATURES_EXT
  , VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceShaderImageAtomicInt64FeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_SHADER_IMAGE_ATOMIC_INT64_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SHADER_IMAGE_ATOMIC_INT64_SPEC_VERSION = 1

pattern VK_EXT_SHADER_IMAGE_ATOMIC_INT64_EXTENSION_NAME :: CString
pattern VK_EXT_SHADER_IMAGE_ATOMIC_INT64_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SHADER_IMAGE_ATOMIC_INT64_EXTENSION_NAME = Ptr ("VK_EXT_shader_image_atomic_int64\0"##)

#else

module Vulkan.Ext.VK_EXT_shader_image_atomic_int64 where

#endif