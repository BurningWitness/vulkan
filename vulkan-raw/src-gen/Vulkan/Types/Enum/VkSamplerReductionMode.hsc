{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerReductionMode where

import Data.Int



#if VK_VERSION_1_2
type VkSamplerReductionMode = #{type int}
#endif

#if VK_VERSION_1_2
pattern VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE :: (Eq a, Num a) => a
pattern VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE = 0
#endif

#if VK_VERSION_1_2
pattern VK_SAMPLER_REDUCTION_MODE_MIN :: (Eq a, Num a) => a
pattern VK_SAMPLER_REDUCTION_MODE_MIN = 1
#endif

#if VK_VERSION_1_2
pattern VK_SAMPLER_REDUCTION_MODE_MAX :: (Eq a, Num a) => a
pattern VK_SAMPLER_REDUCTION_MODE_MAX = 2
#endif

#if VK_EXT_sampler_filter_minmax
pattern VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE_EXT = VK_SAMPLER_REDUCTION_MODE_WEIGHTED_AVERAGE
#endif

#if VK_EXT_sampler_filter_minmax
pattern VK_SAMPLER_REDUCTION_MODE_MIN_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_REDUCTION_MODE_MIN_EXT = VK_SAMPLER_REDUCTION_MODE_MIN
#endif

#if VK_EXT_sampler_filter_minmax
pattern VK_SAMPLER_REDUCTION_MODE_MAX_EXT :: (Eq a, Num a) => a
pattern VK_SAMPLER_REDUCTION_MODE_MAX_EXT = VK_SAMPLER_REDUCTION_MODE_MAX
#endif