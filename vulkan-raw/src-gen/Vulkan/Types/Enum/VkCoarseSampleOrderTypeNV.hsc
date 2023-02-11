{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCoarseSampleOrderTypeNV where

import Data.Int



#if VK_NV_shading_rate_image
type VkCoarseSampleOrderTypeNV = #{type int}
#endif

#if VK_NV_shading_rate_image
pattern VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV :: (Eq a, Num a) => a
pattern VK_COARSE_SAMPLE_ORDER_TYPE_DEFAULT_NV = 0
#endif

#if VK_NV_shading_rate_image
pattern VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV :: (Eq a, Num a) => a
pattern VK_COARSE_SAMPLE_ORDER_TYPE_CUSTOM_NV = 1
#endif

#if VK_NV_shading_rate_image
pattern VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV :: (Eq a, Num a) => a
pattern VK_COARSE_SAMPLE_ORDER_TYPE_PIXEL_MAJOR_NV = 2
#endif

#if VK_NV_shading_rate_image
pattern VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV :: (Eq a, Num a) => a
pattern VK_COARSE_SAMPLE_ORDER_TYPE_SAMPLE_MAJOR_NV = 3
#endif