{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCoverageReductionStateCreateFlagsNV where

import Vulkan.Types.Base



#if VK_NV_coverage_reduction_mode
type VkPipelineCoverageReductionStateCreateFlagsNV = VkFlags
#endif