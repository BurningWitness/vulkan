{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCompareOp where

import Data.Int



type VkCompareOp = #{type int}

pattern VK_COMPARE_OP_NEVER :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_NEVER = 0

pattern VK_COMPARE_OP_LESS :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_LESS = 1

pattern VK_COMPARE_OP_EQUAL :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_EQUAL = 2

pattern VK_COMPARE_OP_LESS_OR_EQUAL :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_LESS_OR_EQUAL = 3

pattern VK_COMPARE_OP_GREATER :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_GREATER = 4

pattern VK_COMPARE_OP_NOT_EQUAL :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_NOT_EQUAL = 5

pattern VK_COMPARE_OP_GREATER_OR_EQUAL :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_GREATER_OR_EQUAL = 6

pattern VK_COMPARE_OP_ALWAYS :: (Eq a, Num a) => a
pattern VK_COMPARE_OP_ALWAYS = 7