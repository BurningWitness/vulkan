{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFragmentShadingRateTypeNV where

import Data.Int



#if VK_NV_fragment_shading_rate_enums
type VkFragmentShadingRateTypeNV = #{type int}
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_TYPE_FRAGMENT_SIZE_NV = 0
#endif

#if VK_NV_fragment_shading_rate_enums
pattern VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_TYPE_ENUMS_NV = 1
#endif