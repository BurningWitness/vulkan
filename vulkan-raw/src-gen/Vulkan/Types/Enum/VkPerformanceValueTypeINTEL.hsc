{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceValueTypeINTEL where

import Data.Int



#if VK_INTEL_performance_query
type VkPerformanceValueTypeINTEL = #{type int}
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL = 0
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL = 1
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL = 2
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL = 3
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL = 4
#endif