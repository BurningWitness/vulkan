{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceParameterTypeINTEL where

import Data.Int



#if VK_INTEL_performance_query
type VkPerformanceParameterTypeINTEL = #{type int}
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL = 0
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL = 1
#endif