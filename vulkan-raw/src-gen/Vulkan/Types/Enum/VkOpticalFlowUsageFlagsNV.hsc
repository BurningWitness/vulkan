{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowUsageFlagsNV where

import Vulkan.Types.Base



#if VK_NV_optical_flow
type VkOpticalFlowUsageFlagsNV = VkFlags
#endif