{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_shader_stencil_export

module Vulkan.Ext.VK_EXT_shader_stencil_export
  ( pattern VK_EXT_SHADER_STENCIL_EXPORT_SPEC_VERSION
  , pattern VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_EXT_SHADER_STENCIL_EXPORT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_SHADER_STENCIL_EXPORT_SPEC_VERSION = 1

pattern VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME :: CString
pattern VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_SHADER_STENCIL_EXPORT_EXTENSION_NAME = Ptr ("VK_EXT_shader_stencil_export\0"##)

#else

module Vulkan.Ext.VK_EXT_shader_stencil_export where

#endif