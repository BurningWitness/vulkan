{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkComponentSwizzle where

import Data.Int



type VkComponentSwizzle = #{type int}

pattern VK_COMPONENT_SWIZZLE_IDENTITY :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_IDENTITY = 0

pattern VK_COMPONENT_SWIZZLE_ZERO :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_ZERO = 1

pattern VK_COMPONENT_SWIZZLE_ONE :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_ONE = 2

pattern VK_COMPONENT_SWIZZLE_R :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_R = 3

pattern VK_COMPONENT_SWIZZLE_G :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_G = 4

pattern VK_COMPONENT_SWIZZLE_B :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_B = 5

pattern VK_COMPONENT_SWIZZLE_A :: (Eq a, Num a) => a
pattern VK_COMPONENT_SWIZZLE_A = 6