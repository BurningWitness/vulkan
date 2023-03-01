{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueryPoolSamplingModeINTEL where

import Data.Int



#if VK_INTEL_performance_query
type VkQueryPoolSamplingModeINTEL = #{type int}
#endif

#if VK_INTEL_performance_query
pattern VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL :: (Eq a, Num a) => a
pattern VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL = 0
#endif