{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCacheHeaderVersion where

import Data.Int



type VkPipelineCacheHeaderVersion = #{type int}

pattern VK_PIPELINE_CACHE_HEADER_VERSION_ONE :: (Eq a, Num a) => a
pattern VK_PIPELINE_CACHE_HEADER_VERSION_ONE = 1