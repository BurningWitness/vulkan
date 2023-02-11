{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCoverageToColorStateCreateFlagsNV where

import Vulkan.Types.Base



#if VK_NV_fragment_coverage_to_color
type VkPipelineCoverageToColorStateCreateFlagsNV = VkFlags
#endif