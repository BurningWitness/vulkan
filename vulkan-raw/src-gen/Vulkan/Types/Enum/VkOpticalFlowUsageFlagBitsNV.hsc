{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowUsageFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_optical_flow
type VkOpticalFlowUsageFlagBitsNV = VkFlags
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_USAGE_UNKNOWN_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_USAGE_UNKNOWN_NV = 0
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_USAGE_INPUT_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_USAGE_INPUT_BIT_NV = 1
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_USAGE_OUTPUT_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_USAGE_OUTPUT_BIT_NV = 2
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_USAGE_HINT_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_USAGE_HINT_BIT_NV = 4
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_USAGE_COST_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_USAGE_COST_BIT_NV = 8
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_USAGE_GLOBAL_FLOW_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_USAGE_GLOBAL_FLOW_BIT_NV = 16
#endif