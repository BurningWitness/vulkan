{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceCounterDescriptionFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_performance_query
type VkPerformanceCounterDescriptionFlagBitsKHR = VkFlags
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR = 1
#endif

#if VK_KHR_performance_query
-- | Backwards-compatible alias containing a typo
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR = 1
#endif

#if VK_KHR_performance_query
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR = 2
#endif

#if VK_KHR_performance_query
-- | Backwards-compatible alias containing a typo
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR = 2
#endif