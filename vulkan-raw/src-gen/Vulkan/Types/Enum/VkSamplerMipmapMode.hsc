{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSamplerMipmapMode where

import Data.Int



type VkSamplerMipmapMode = #{type int}

-- | Choose nearest mip level
pattern VK_SAMPLER_MIPMAP_MODE_NEAREST :: (Eq a, Num a) => a
pattern VK_SAMPLER_MIPMAP_MODE_NEAREST = 0

-- | Linear filter between mip levels
pattern VK_SAMPLER_MIPMAP_MODE_LINEAR :: (Eq a, Num a) => a
pattern VK_SAMPLER_MIPMAP_MODE_LINEAR = 1