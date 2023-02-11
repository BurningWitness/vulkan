{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_viewport_swizzle

module Vulkan.Ext.VK_NV_viewport_swizzle
  ( pattern VK_NV_VIEWPORT_SWIZZLE_SPEC_VERSION
  , pattern VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_SWIZZLE_STATE_CREATE_INFO_NV
  , VkViewportSwizzleNV (..)
  , VkViewportCoordinateSwizzleNV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV
  , pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV
  , VkPipelineViewportSwizzleStateCreateInfoNV (..)
  , VkPipelineViewportSwizzleStateCreateFlagsNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineViewportSwizzleStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkViewportCoordinateSwizzleNV
import Vulkan.Types.Struct.VkPipelineViewportSwizzleStateCreateInfoNV
import Vulkan.Types.Struct.VkViewportSwizzleNV
import Vulkan.Types.VkFun



pattern VK_NV_VIEWPORT_SWIZZLE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_VIEWPORT_SWIZZLE_SPEC_VERSION = 1

pattern VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME :: CString
pattern VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_VIEWPORT_SWIZZLE_EXTENSION_NAME = Ptr ("VK_NV_viewport_swizzle\0"##)

#else

module Vulkan.Ext.VK_NV_viewport_swizzle where

#endif