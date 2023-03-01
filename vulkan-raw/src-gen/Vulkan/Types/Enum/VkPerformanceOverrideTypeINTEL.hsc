{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceOverrideTypeINTEL where

import Data.Int



#if VK_INTEL_performance_query
type VkPerformanceOverrideTypeINTEL = #{type int}
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL = 0
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL = 1
#endif