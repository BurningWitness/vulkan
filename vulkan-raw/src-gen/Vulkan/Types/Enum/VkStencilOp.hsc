{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkStencilOp where

import Data.Int



type VkStencilOp = #{type int}

pattern VK_STENCIL_OP_KEEP :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_KEEP = 0

pattern VK_STENCIL_OP_ZERO :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_ZERO = 1

pattern VK_STENCIL_OP_REPLACE :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_REPLACE = 2

pattern VK_STENCIL_OP_INCREMENT_AND_CLAMP :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_INCREMENT_AND_CLAMP = 3

pattern VK_STENCIL_OP_DECREMENT_AND_CLAMP :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_DECREMENT_AND_CLAMP = 4

pattern VK_STENCIL_OP_INVERT :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_INVERT = 5

pattern VK_STENCIL_OP_INCREMENT_AND_WRAP :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_INCREMENT_AND_WRAP = 6

pattern VK_STENCIL_OP_DECREMENT_AND_WRAP :: (Eq a, Num a) => a
pattern VK_STENCIL_OP_DECREMENT_AND_WRAP = 7