{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCoverageModulationModeNV where

import Data.Int



#if VK_NV_framebuffer_mixed_samples
type VkCoverageModulationModeNV = #{type int}
#endif

#if VK_NV_framebuffer_mixed_samples
pattern VK_COVERAGE_MODULATION_MODE_NONE_NV :: (Eq a, Num a) => a
pattern VK_COVERAGE_MODULATION_MODE_NONE_NV = 0
#endif

#if VK_NV_framebuffer_mixed_samples
pattern VK_COVERAGE_MODULATION_MODE_RGB_NV :: (Eq a, Num a) => a
pattern VK_COVERAGE_MODULATION_MODE_RGB_NV = 1
#endif

#if VK_NV_framebuffer_mixed_samples
pattern VK_COVERAGE_MODULATION_MODE_ALPHA_NV :: (Eq a, Num a) => a
pattern VK_COVERAGE_MODULATION_MODE_ALPHA_NV = 2
#endif

#if VK_NV_framebuffer_mixed_samples
pattern VK_COVERAGE_MODULATION_MODE_RGBA_NV :: (Eq a, Num a) => a
pattern VK_COVERAGE_MODULATION_MODE_RGBA_NV = 3
#endif