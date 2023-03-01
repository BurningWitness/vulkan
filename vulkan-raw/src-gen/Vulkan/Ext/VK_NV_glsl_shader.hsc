{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_glsl_shader

module Vulkan.Ext.VK_NV_glsl_shader
  ( pattern VK_NV_GLSL_SHADER_SPEC_VERSION
  , pattern VK_NV_GLSL_SHADER_EXTENSION_NAME
  , pattern VK_ERROR_INVALID_SHADER_NV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.VkFun



pattern VK_NV_GLSL_SHADER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_GLSL_SHADER_SPEC_VERSION = 1

pattern VK_NV_GLSL_SHADER_EXTENSION_NAME :: CString
pattern VK_NV_GLSL_SHADER_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_GLSL_SHADER_EXTENSION_NAME = Ptr ("VK_NV_glsl_shader\0"##)

#else

module Vulkan.Ext.VK_NV_glsl_shader where

#endif