{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineDiscardRectangleStateCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_discard_rectangles
type VkPipelineDiscardRectangleStateCreateFlagsEXT = VkFlags
#endif