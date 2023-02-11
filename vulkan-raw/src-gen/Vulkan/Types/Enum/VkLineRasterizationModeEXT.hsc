{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkLineRasterizationModeEXT where

import Data.Int



#if VK_EXT_line_rasterization
type VkLineRasterizationModeEXT = #{type int}
#endif

#if VK_EXT_line_rasterization
pattern VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT :: (Eq a, Num a) => a
pattern VK_LINE_RASTERIZATION_MODE_DEFAULT_EXT = 0
#endif

#if VK_EXT_line_rasterization
pattern VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT :: (Eq a, Num a) => a
pattern VK_LINE_RASTERIZATION_MODE_RECTANGULAR_EXT = 1
#endif

#if VK_EXT_line_rasterization
pattern VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT :: (Eq a, Num a) => a
pattern VK_LINE_RASTERIZATION_MODE_BRESENHAM_EXT = 2
#endif

#if VK_EXT_line_rasterization
pattern VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT :: (Eq a, Num a) => a
pattern VK_LINE_RASTERIZATION_MODE_RECTANGULAR_SMOOTH_EXT = 3
#endif