{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_compute_shader_derivatives

module Vulkan.Ext.VK_NV_compute_shader_derivatives
  ( pattern VK_NV_COMPUTE_SHADER_DERIVATIVES_SPEC_VERSION
  , pattern VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COMPUTE_SHADER_DERIVATIVES_FEATURES_NV
  , VkPhysicalDeviceComputeShaderDerivativesFeaturesNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceComputeShaderDerivativesFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_COMPUTE_SHADER_DERIVATIVES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_COMPUTE_SHADER_DERIVATIVES_SPEC_VERSION = 1

pattern VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME :: CString
pattern VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_COMPUTE_SHADER_DERIVATIVES_EXTENSION_NAME = Ptr ("VK_NV_compute_shader_derivatives\0"##)

#else

module Vulkan.Ext.VK_NV_compute_shader_derivatives where

#endif