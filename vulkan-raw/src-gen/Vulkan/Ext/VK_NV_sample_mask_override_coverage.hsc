{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_sample_mask_override_coverage

module Vulkan.Ext.VK_NV_sample_mask_override_coverage
  ( pattern VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_SPEC_VERSION
  , pattern VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.VkFun



pattern VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_SPEC_VERSION = 1

pattern VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME :: CString
pattern VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_SAMPLE_MASK_OVERRIDE_COVERAGE_EXTENSION_NAME = Ptr ("VK_NV_sample_mask_override_coverage\0"##)

#else

module Vulkan.Ext.VK_NV_sample_mask_override_coverage where

#endif