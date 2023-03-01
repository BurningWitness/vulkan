{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowExecuteFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_optical_flow
type VkOpticalFlowExecuteFlagBitsNV = VkFlags
#endif

#if VK_NV_optical_flow
pattern VK_OPTICAL_FLOW_EXECUTE_DISABLE_TEMPORAL_HINTS_BIT_NV :: (Eq a, Num a) => a
pattern VK_OPTICAL_FLOW_EXECUTE_DISABLE_TEMPORAL_HINTS_BIT_NV = 1
#endif