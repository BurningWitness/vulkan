{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSampleCountFlagBits where

import Vulkan.Types.Base



type VkSampleCountFlagBits = VkFlags

-- | Sample count 1 supported
pattern VK_SAMPLE_COUNT_1_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_1_BIT = 1

-- | Sample count 2 supported
pattern VK_SAMPLE_COUNT_2_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_2_BIT = 2

-- | Sample count 4 supported
pattern VK_SAMPLE_COUNT_4_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_4_BIT = 4

-- | Sample count 8 supported
pattern VK_SAMPLE_COUNT_8_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_8_BIT = 8

-- | Sample count 16 supported
pattern VK_SAMPLE_COUNT_16_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_16_BIT = 16

-- | Sample count 32 supported
pattern VK_SAMPLE_COUNT_32_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_32_BIT = 32

-- | Sample count 64 supported
pattern VK_SAMPLE_COUNT_64_BIT :: (Eq a, Num a) => a
pattern VK_SAMPLE_COUNT_64_BIT = 64