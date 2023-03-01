{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_framebuffer_mixed_samples

module Vulkan.Ext.VK_NV_framebuffer_mixed_samples
  ( pattern VK_NV_FRAMEBUFFER_MIXED_SAMPLES_SPEC_VERSION
  , pattern VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_MODULATION_STATE_CREATE_INFO_NV
  , VkPipelineCoverageModulationStateCreateInfoNV (..)
  , VkPipelineCoverageModulationStateCreateFlagsNV
  , VkCoverageModulationModeNV
  , pattern VK_COVERAGE_MODULATION_MODE_NONE_NV
  , pattern VK_COVERAGE_MODULATION_MODE_RGB_NV
  , pattern VK_COVERAGE_MODULATION_MODE_ALPHA_NV
  , pattern VK_COVERAGE_MODULATION_MODE_RGBA_NV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkCoverageModulationModeNV
import Vulkan.Types.Enum.VkPipelineCoverageModulationStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineCoverageModulationStateCreateInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_FRAMEBUFFER_MIXED_SAMPLES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_FRAMEBUFFER_MIXED_SAMPLES_SPEC_VERSION = 1

pattern VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME :: CString
pattern VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_FRAMEBUFFER_MIXED_SAMPLES_EXTENSION_NAME = Ptr ("VK_NV_framebuffer_mixed_samples\0"##)

#else

module Vulkan.Ext.VK_NV_framebuffer_mixed_samples where

#endif