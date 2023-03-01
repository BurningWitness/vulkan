{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_coverage_reduction_mode

module Vulkan.Ext.VK_NV_coverage_reduction_mode
  ( pattern VK_NV_COVERAGE_REDUCTION_MODE_SPEC_VERSION
  , pattern VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_COVERAGE_REDUCTION_MODE_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_REDUCTION_STATE_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_FRAMEBUFFER_MIXED_SAMPLES_COMBINATION_NV
  , VkPhysicalDeviceCoverageReductionModeFeaturesNV (..)
  , VkPipelineCoverageReductionStateCreateInfoNV (..)
  , VkPipelineCoverageReductionStateCreateFlagsNV
  , VkCoverageReductionModeNV
  , pattern VK_COVERAGE_REDUCTION_MODE_MERGE_NV
  , pattern VK_COVERAGE_REDUCTION_MODE_TRUNCATE_NV
  , VkFramebufferMixedSamplesCombinationNV (..)
  , VkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV
  , vkFunGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkCoverageReductionModeNV
import Vulkan.Types.Enum.VkPipelineCoverageReductionStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFramebufferMixedSamplesCombinationNV
import Vulkan.Types.Struct.VkPhysicalDeviceCoverageReductionModeFeaturesNV
import Vulkan.Types.Struct.VkPipelineCoverageReductionStateCreateInfoNV
import Vulkan.Types.Command.VkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV
import Vulkan.Types.VkFun



pattern VK_NV_COVERAGE_REDUCTION_MODE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_COVERAGE_REDUCTION_MODE_SPEC_VERSION = 1

pattern VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME :: CString
pattern VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_COVERAGE_REDUCTION_MODE_EXTENSION_NAME = Ptr ("VK_NV_coverage_reduction_mode\0"##)

#else

module Vulkan.Ext.VK_NV_coverage_reduction_mode where

#endif