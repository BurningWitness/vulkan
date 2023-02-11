{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPerformanceConfigurationTypeINTEL where

import Data.Int



#if VK_INTEL_performance_query
type VkPerformanceConfigurationTypeINTEL = #{type int}
#endif

#if VK_INTEL_performance_query
pattern VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL :: (Eq a, Num a) => a
pattern VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL = 0
#endif