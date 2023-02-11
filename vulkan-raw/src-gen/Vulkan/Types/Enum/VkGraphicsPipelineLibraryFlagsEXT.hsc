{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGraphicsPipelineLibraryFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_graphics_pipeline_library
type VkGraphicsPipelineLibraryFlagsEXT = VkFlags
#endif