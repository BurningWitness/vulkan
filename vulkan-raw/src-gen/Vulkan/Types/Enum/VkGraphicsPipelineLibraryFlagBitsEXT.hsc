{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGraphicsPipelineLibraryFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_graphics_pipeline_library
type VkGraphicsPipelineLibraryFlagBitsEXT = VkFlags
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT = 1
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT = 2
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT = 4
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT = 8
#endif