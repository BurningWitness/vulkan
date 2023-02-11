{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFragmentShadingRateCombinerOpKHR where

import Data.Int



#if VK_KHR_fragment_shading_rate
type VkFragmentShadingRateCombinerOpKHR = #{type int}
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR = 0
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR = 1
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR = 2
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR = 3
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR :: (Eq a, Num a) => a
pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR = 4
#endif