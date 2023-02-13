{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFilter where

import Data.Int



type VkFilter = #{type int}

pattern VK_FILTER_NEAREST :: (Eq a, Num a) => a
pattern VK_FILTER_NEAREST = 0

pattern VK_FILTER_LINEAR :: (Eq a, Num a) => a
pattern VK_FILTER_LINEAR = 1

#if VK_IMG_filter_cubic
pattern VK_FILTER_CUBIC_IMG :: (Eq a, Num a) => a
pattern VK_FILTER_CUBIC_IMG = 1000015000
#endif

#if VK_EXT_filter_cubic
pattern VK_FILTER_CUBIC_EXT :: (Eq a, Num a) => a
pattern VK_FILTER_CUBIC_EXT = 1000015000
#endif