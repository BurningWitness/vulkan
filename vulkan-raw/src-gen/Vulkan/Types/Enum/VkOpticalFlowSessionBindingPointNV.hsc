{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowSessionBindingPointNV where

import Data.Int



#if VK_NV_optical_flow
type VkOpticalFlowSessionBindingPointNV = #{type int}
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV = 0
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV = 1
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV = 2
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV = 3
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV = 4
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV = 5
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV = 6
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV = 7
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV = 8
#endif