{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFragmentShadingRateNV where

import Data.Int



#if VK_NV_fragment_shading_rate_enums
type VkFragmentShadingRateNV = #{type int}
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_PIXEL_NV = 0
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_1X2_PIXELS_NV = 1
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X1_PIXELS_NV = 4
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X2_PIXELS_NV = 5
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_2X4_PIXELS_NV = 6
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X2_PIXELS_NV = 9
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_1_INVOCATION_PER_4X4_PIXELS_NV = 10
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_2_INVOCATIONS_PER_PIXEL_NV = 11
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_4_INVOCATIONS_PER_PIXEL_NV = 12
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_8_INVOCATIONS_PER_PIXEL_NV = 13
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_16_INVOCATIONS_PER_PIXEL_NV = 14
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_NO_INVOCATIONS_NV = 15
#endif