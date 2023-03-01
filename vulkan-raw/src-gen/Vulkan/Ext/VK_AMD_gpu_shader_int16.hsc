{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_AMD_gpu_shader_int16

module Vulkan.Ext.VK_AMD_gpu_shader_int16
  ( pattern VK_AMD_GPU_SHADER_INT16_SPEC_VERSION
  , pattern VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_AMD_GPU_SHADER_INT16_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_AMD_GPU_SHADER_INT16_SPEC_VERSION = 2

pattern VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME :: CString
pattern VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME <- (const False -> True)
  where
    VK_AMD_GPU_SHADER_INT16_EXTENSION_NAME = Ptr ("VK_AMD_gpu_shader_int16\0"##)

#else

module Vulkan.Ext.VK_AMD_gpu_shader_int16 where

#endif