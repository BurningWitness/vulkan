{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShadingRatePaletteEntryNV where

import Data.Int



#if VK_NV_shading_rate_image
type VkShadingRatePaletteEntryNV = #{type int}
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_NO_INVOCATIONS_NV = 0
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_16_INVOCATIONS_PER_PIXEL_NV = 1
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_8_INVOCATIONS_PER_PIXEL_NV = 2
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_4_INVOCATIONS_PER_PIXEL_NV = 3
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_2_INVOCATIONS_PER_PIXEL_NV = 4
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_PIXEL_NV = 5
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X1_PIXELS_NV = 6
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_1X2_PIXELS_NV = 7
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X2_PIXELS_NV = 8
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X2_PIXELS_NV = 9
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_2X4_PIXELS_NV = 10
#endif

#if VK_NV_shading_rate_image
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV :: (Eq a, Num a) => a
pattern VK_SHADING_RATE_PALETTE_ENTRY_1_INVOCATION_PER_4X4_PIXELS_NV = 11
#endif