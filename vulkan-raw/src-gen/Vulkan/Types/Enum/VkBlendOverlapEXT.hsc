{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBlendOverlapEXT where

import Data.Int



#if VK_EXT_blend_operation_advanced
type VkBlendOverlapEXT = #{type int}
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OVERLAP_UNCORRELATED_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OVERLAP_UNCORRELATED_EXT = 0
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OVERLAP_DISJOINT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OVERLAP_DISJOINT_EXT = 1
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_BLEND_OVERLAP_CONJOINT_EXT :: (Eq a, Num a) => a
pattern VK_BLEND_OVERLAP_CONJOINT_EXT = 2
#endif