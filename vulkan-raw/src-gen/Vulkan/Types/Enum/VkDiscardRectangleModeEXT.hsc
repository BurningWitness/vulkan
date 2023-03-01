{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDiscardRectangleModeEXT where

import Data.Int



#if VK_EXT_discard_rectangles
type VkDiscardRectangleModeEXT = #{type int}
#endif

#if VK_EXT_discard_rectangles
pattern VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT :: (Eq a, Num a) => a
pattern VK_DISCARD_RECTANGLE_MODE_INCLUSIVE_EXT = 0
#endif

#if VK_EXT_discard_rectangles
pattern VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT :: (Eq a, Num a) => a
pattern VK_DISCARD_RECTANGLE_MODE_EXCLUSIVE_EXT = 1
#endif