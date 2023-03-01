{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_shader_barycentric

module Vulkan.Ext.VK_NV_fragment_shader_barycentric
  ( pattern VK_NV_FRAGMENT_SHADER_BARYCENTRIC_SPEC_VERSION
  , pattern VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADER_BARYCENTRIC_FEATURES_NV
  , VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShaderBarycentricFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_FRAGMENT_SHADER_BARYCENTRIC_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_FRAGMENT_SHADER_BARYCENTRIC_SPEC_VERSION = 1

pattern VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME :: CString
pattern VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_FRAGMENT_SHADER_BARYCENTRIC_EXTENSION_NAME = Ptr ("VK_NV_fragment_shader_barycentric\0"##)

#else

module Vulkan.Ext.VK_NV_fragment_shader_barycentric where

#endif