{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceCounterStorageKHR where

import Data.Int



#if VK_KHR_performance_query
type VkPerformanceCounterStorageKHR = #{type int}
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR = 0
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR = 1
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR = 2
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR = 3
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR = 4
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR = 5
#endif