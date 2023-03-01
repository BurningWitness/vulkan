{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowSessionCreateFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_optical_flow
type VkOpticalFlowSessionCreateFlagBitsNV = VkFlags
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_HINT_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_HINT_BIT_NV = 1
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_COST_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_COST_BIT_NV = 2
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_GLOBAL_FLOW_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_GLOBAL_FLOW_BIT_NV = 4
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ALLOW_REGIONS_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_CREATE_ALLOW_REGIONS_BIT_NV = 8
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_CREATE_BOTH_DIRECTIONS_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_CREATE_BOTH_DIRECTIONS_BIT_NV = 16
#endif