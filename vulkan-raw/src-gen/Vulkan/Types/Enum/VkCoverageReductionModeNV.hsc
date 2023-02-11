{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCoverageReductionModeNV where

import Data.Int



#if VK_NV_coverage_reduction_mode
type VkCoverageReductionModeNV = #{type int}
#endif

#if VK_NV_coverage_reduction_mode
pattern VK_COVERAGE_REDUCTION_MODE_MERGE_NV :: (Eq a, Num a) => a
pattern VK_COVERAGE_REDUCTION_MODE_MERGE_NV = 0
#endif

#if VK_NV_coverage_reduction_mode
pattern VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV :: (Eq a, Num a) => a
pattern VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV = 1
#endif