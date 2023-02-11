{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkTimeDomainEXT where

import Data.Int



#if VK_EXT_calibrated_timestamps
type VkTimeDomainEXT = #{type int}
#endif

#if VK_EXT_calibrated_timestamps
pattern VK_TIME_DOMAIN_DEVICE_EXT :: (Eq a, Num a) => a
pattern VK_TIME_DOMAIN_DEVICE_EXT = 0
#endif

#if VK_EXT_calibrated_timestamps
pattern VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT :: (Eq a, Num a) => a
pattern VK_TIME_DOMAIN_CLOCK_MONOTONIC_EXT = 1
#endif

#if VK_EXT_calibrated_timestamps
pattern VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT :: (Eq a, Num a) => a
pattern VK_TIME_DOMAIN_CLOCK_MONOTONIC_RAW_EXT = 2
#endif

#if VK_EXT_calibrated_timestamps
pattern VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT :: (Eq a, Num a) => a
pattern VK_TIME_DOMAIN_QUERY_PERFORMANCE_COUNTER_EXT = 3
#endif