{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_IMG_filter_cubic

module Vulkan.Ext.VK_IMG_filter_cubic
  ( pattern VK_IMG_FILTER_CUBIC_SPEC_VERSION
  , pattern VK_IMG_FILTER_CUBIC_EXTENSION_NAME
  , pattern VK_FILTER_CUBIC_IMG
  , pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFilter
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.VkFun



pattern VK_IMG_FILTER_CUBIC_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_IMG_FILTER_CUBIC_SPEC_VERSION = 1

pattern VK_IMG_FILTER_CUBIC_EXTENSION_NAME :: CString
pattern VK_IMG_FILTER_CUBIC_EXTENSION_NAME <- (const False -> True)
  where
    VK_IMG_FILTER_CUBIC_EXTENSION_NAME = Ptr ("VK_IMG_filter_cubic\0"##)

#else

module Vulkan.Ext.VK_IMG_filter_cubic where

#endif