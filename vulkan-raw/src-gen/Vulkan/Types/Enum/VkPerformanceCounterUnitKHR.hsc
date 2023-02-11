{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceCounterUnitKHR where

import Data.Int



#if VK_KHR_performance_query
type VkPerformanceCounterUnitKHR = #{type int}
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR = 0
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR = 1
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR = 2
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR = 3
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR = 4
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR = 5
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR = 6
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR = 7
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR = 8
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR = 9
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR = 10
#endif