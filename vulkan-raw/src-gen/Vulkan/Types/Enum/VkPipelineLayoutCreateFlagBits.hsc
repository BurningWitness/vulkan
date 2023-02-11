{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineLayoutCreateFlagBits where

import Vulkan.Types.Base



#if VK_EXT_graphics_pipeline_library
type VkPipelineLayoutCreateFlagBits = VkFlags
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT = 2
#endif