{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPolygonMode where

import Data.Int



type VkPolygonMode = #{type int}

pattern VK_POLYGON_MODE_FILL :: (Eq a, Num a) => a
pattern VK_POLYGON_MODE_FILL = 0

pattern VK_POLYGON_MODE_LINE :: (Eq a, Num a) => a
pattern VK_POLYGON_MODE_LINE = 1

pattern VK_POLYGON_MODE_POINT :: (Eq a, Num a) => a
pattern VK_POLYGON_MODE_POINT = 2

#if VK_NV_fill_rectangle
pattern VK_POLYGON_MODE_FILL_RECTANGLE_NV :: (Eq a, Num a) => a
pattern VK_POLYGON_MODE_FILL_RECTANGLE_NV = 1000153000
#endif