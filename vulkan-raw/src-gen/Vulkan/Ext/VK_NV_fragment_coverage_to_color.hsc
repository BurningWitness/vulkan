{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_fragment_coverage_to_color

module Vulkan.Ext.VK_NV_fragment_coverage_to_color
  ( pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION
  , pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PIPELINE_COVERAGE_TO_COLOR_STATE_CREATE_INFO_NV
  , VkPipelineCoverageToColorStateCreateFlagsNV
  , VkPipelineCoverageToColorStateCreateInfoNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCoverageToColorStateCreateFlagsNV
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineCoverageToColorStateCreateInfoNV
import Vulkan.Types.VkFun



pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_SPEC_VERSION = 1

pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME :: CString
pattern VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_FRAGMENT_COVERAGE_TO_COLOR_EXTENSION_NAME = Ptr ("VK_NV_fragment_coverage_to_color\0"##)

#else

module Vulkan.Ext.VK_NV_fragment_coverage_to_color where

#endif