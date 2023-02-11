{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowGridSizeFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_optical_flow
type VkOpticalFlowGridSizeFlagBitsNV = VkFlags
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_GRID_SIZE_UNKNOWN_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_GRID_SIZE_UNKNOWN_NV = 0
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_GRID_SIZE_1X1_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_GRID_SIZE_1X1_BIT_NV = 1
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_GRID_SIZE_2X2_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_GRID_SIZE_2X2_BIT_NV = 2
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_GRID_SIZE_4X4_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_GRID_SIZE_4X4_BIT_NV = 4
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_GRID_SIZE_8X8_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_GRID_SIZE_8X8_BIT_NV = 8
#endif