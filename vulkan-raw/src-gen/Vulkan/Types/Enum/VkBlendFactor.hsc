{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBlendFactor where

import Data.Int



type VkBlendFactor = #{type int}

pattern VK_BLEND_FACTOR_ZERO :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ZERO = 0

pattern VK_BLEND_FACTOR_ONE :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE = 1

pattern VK_BLEND_FACTOR_SRC_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_SRC_COLOR = 2

pattern VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_SRC_COLOR = 3

pattern VK_BLEND_FACTOR_DST_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_DST_COLOR = 4

pattern VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_DST_COLOR = 5

pattern VK_BLEND_FACTOR_SRC_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_SRC_ALPHA = 6

pattern VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA = 7

pattern VK_BLEND_FACTOR_DST_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_DST_ALPHA = 8

pattern VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_DST_ALPHA = 9

pattern VK_BLEND_FACTOR_CONSTANT_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_CONSTANT_COLOR = 10

pattern VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_COLOR = 11

pattern VK_BLEND_FACTOR_CONSTANT_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_CONSTANT_ALPHA = 12

pattern VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_CONSTANT_ALPHA = 13

pattern VK_BLEND_FACTOR_SRC_ALPHA_SATURATE :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_SRC_ALPHA_SATURATE = 14

pattern VK_BLEND_FACTOR_SRC1_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_SRC1_COLOR = 15

pattern VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_SRC1_COLOR = 16

pattern VK_BLEND_FACTOR_SRC1_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_SRC1_ALPHA = 17

pattern VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA :: (Eq a, Num a) => a
pattern VK_BLEND_FACTOR_ONE_MINUS_SRC1_ALPHA = 18