{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_geometry_shader_passthrough

module Vulkan.Ext.VK_NV_geometry_shader_passthrough
  ( pattern VK_NV_GEOMETRY_SHADER_PASSTHROUGH_SPEC_VERSION
  , pattern VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_NV_GEOMETRY_SHADER_PASSTHROUGH_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_GEOMETRY_SHADER_PASSTHROUGH_SPEC_VERSION = 1

pattern VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME :: CString
pattern VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_GEOMETRY_SHADER_PASSTHROUGH_EXTENSION_NAME = Ptr ("VK_NV_geometry_shader_passthrough\0"##)

#else

module Vulkan.Ext.VK_NV_geometry_shader_passthrough where

#endif