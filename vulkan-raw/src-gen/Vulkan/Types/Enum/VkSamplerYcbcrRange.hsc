{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerYcbcrRange where

import Data.Int



#if VK_VERSION_1_1
type VkSamplerYcbcrRange = #{type int}
#endif

#if VK_VERSION_1_1
-- | Luma 0..1 maps to 0..255, chroma -0.5..0.5 to 1..255 (clamped)
pattern VK_SAMPLER_YCBCR_RANGE_ITU_FULL :: (Eq a, Num a) => a
pattern VK_SAMPLER_YCBCR_RANGE_ITU_FULL = 0
#endif

#if VK_VERSION_1_1
-- | Luma 0..1 maps to 16..235, chroma -0.5..0.5 to 16..240
pattern VK_SAMPLER_YCBCR_RANGE_ITU_NARROW :: (Eq a, Num a) => a
pattern VK_SAMPLER_YCBCR_RANGE_ITU_NARROW = 1
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR :: (Eq a, Num a) => a
pattern VK_SAMPLER_YCBCR_RANGE_ITU_FULL_KHR = VK_SAMPLER_YCBCR_RANGE_ITU_FULL
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR :: (Eq a, Num a) => a
pattern VK_SAMPLER_YCBCR_RANGE_ITU_NARROW_KHR = VK_SAMPLER_YCBCR_RANGE_ITU_NARROW
#endif