{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineRasterizationDepthClipStateCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_depth_clip_enable
type VkPipelineRasterizationDepthClipStateCreateFlagsEXT = VkFlags
#endif