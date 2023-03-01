{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineRasterizationConservativeStateCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_conservative_rasterization
type VkPipelineRasterizationConservativeStateCreateFlagsEXT = VkFlags
#endif