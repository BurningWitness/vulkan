{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkLogicOp where

import Data.Int



type VkLogicOp = #{type int}

pattern VK_LOGIC_OP_CLEAR :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_CLEAR = 0

pattern VK_LOGIC_OP_AND :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_AND = 1

pattern VK_LOGIC_OP_AND_REVERSE :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_AND_REVERSE = 2

pattern VK_LOGIC_OP_COPY :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_COPY = 3

pattern VK_LOGIC_OP_AND_INVERTED :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_AND_INVERTED = 4

pattern VK_LOGIC_OP_NO_OP :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_NO_OP = 5

pattern VK_LOGIC_OP_XOR :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_XOR = 6

pattern VK_LOGIC_OP_OR :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_OR = 7

pattern VK_LOGIC_OP_NOR :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_NOR = 8

pattern VK_LOGIC_OP_EQUIVALENT :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_EQUIVALENT = 9

pattern VK_LOGIC_OP_INVERT :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_INVERT = 10

pattern VK_LOGIC_OP_OR_REVERSE :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_OR_REVERSE = 11

pattern VK_LOGIC_OP_COPY_INVERTED :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_COPY_INVERTED = 12

pattern VK_LOGIC_OP_OR_INVERTED :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_OR_INVERTED = 13

pattern VK_LOGIC_OP_NAND :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_NAND = 14

pattern VK_LOGIC_OP_SET :: (Eq a, Num a) => a
pattern VK_LOGIC_OP_SET = 15