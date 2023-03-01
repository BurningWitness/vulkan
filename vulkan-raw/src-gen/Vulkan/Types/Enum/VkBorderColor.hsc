{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBorderColor where

import Data.Int



type VkBorderColor = #{type int}

pattern VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_FLOAT_TRANSPARENT_BLACK = 0

pattern VK_BORDER_COLOR_INT_TRANSPARENT_BLACK :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_INT_TRANSPARENT_BLACK = 1

pattern VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_FLOAT_OPAQUE_BLACK = 2

pattern VK_BORDER_COLOR_INT_OPAQUE_BLACK :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_INT_OPAQUE_BLACK = 3

pattern VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_FLOAT_OPAQUE_WHITE = 4

pattern VK_BORDER_COLOR_INT_OPAQUE_WHITE :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_INT_OPAQUE_WHITE = 5

#if VK_EXT_custom_border_color
pattern VK_BORDER_COLOR_FLOAT_CUSTOM_EXT :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_FLOAT_CUSTOM_EXT = 1000287003
#endif

#if VK_EXT_custom_border_color
pattern VK_BORDER_COLOR_INT_CUSTOM_EXT :: (Eq a, Num a) => a
pattern VK_BORDER_COLOR_INT_CUSTOM_EXT = 1000287004
#endif