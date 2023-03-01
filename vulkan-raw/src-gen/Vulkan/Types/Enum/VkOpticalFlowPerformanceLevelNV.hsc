{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowPerformanceLevelNV where

import Data.Int



#if VK_NV_optical_flow
type VkOpticalFlowPerformanceLevelNV = #{type int}
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV = 0
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV = 1
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV = 2
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV = 3
#endif