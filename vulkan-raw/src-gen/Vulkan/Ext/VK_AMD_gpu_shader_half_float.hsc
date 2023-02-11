{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_gpu_shader_half_float

module Vulkan.Ext.VK_AMD_gpu_shader_half_float
  ( pattern VK_AMD_GPU_SHADER_HALF_FLOAT_SPEC_VERSION
  , pattern VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_AMD_GPU_SHADER_HALF_FLOAT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_GPU_SHADER_HALF_FLOAT_SPEC_VERSION = 2

pattern VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME :: CString
pattern VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_GPU_SHADER_HALF_FLOAT_EXTENSION_NAME = Ptr ("VK_AMD_gpu_shader_half_float\0"##)

#else

module Vulkan.Ext.VK_AMD_gpu_shader_half_float where

#endif