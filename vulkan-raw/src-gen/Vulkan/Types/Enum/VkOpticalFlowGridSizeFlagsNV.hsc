{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpticalFlowGridSizeFlagsNV where

import Vulkan.Types.Base



#if VK_NV_optical_flow
type VkOpticalFlowGridSizeFlagsNV = VkFlags
#endif