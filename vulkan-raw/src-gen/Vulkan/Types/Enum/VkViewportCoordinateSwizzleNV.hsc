{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkViewportCoordinateSwizzleNV where

import Data.Int



#if VK_NV_viewport_swizzle
type VkViewportCoordinateSwizzleNV = #{type int}
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_X_NV = 0
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_X_NV = 1
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Y_NV = 2
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Y_NV = 3
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_Z_NV = 4
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_Z_NV = 5
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_POSITIVE_W_NV = 6
#endif

#if VK_NV_viewport_swizzle
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV :: (Eq a, Num a) => a
pattern VK_VIEWPORT_COORDINATE_SWIZZLE_NEGATIVE_W_NV = 7
#endif