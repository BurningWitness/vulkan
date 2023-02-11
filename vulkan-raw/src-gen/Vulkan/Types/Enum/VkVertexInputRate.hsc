{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVertexInputRate where

import Data.Int



type VkVertexInputRate = #{type int}

pattern VK_VERTEX_INPUT_RATE_VERTEX :: (Eq a, Num a) => a
pattern VK_VERTEX_INPUT_RATE_VERTEX = 0

pattern VK_VERTEX_INPUT_RATE_INSTANCE :: (Eq a, Num a) => a
pattern VK_VERTEX_INPUT_RATE_INSTANCE = 1