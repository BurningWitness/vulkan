{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_format_feature_flags2

module Vulkan.Ext.VK_KHR_format_feature_flags2
  ( pattern VK_KHR_FORMAT_FEATURE_FLAGS_2_SPEC_VERSION
  , pattern VK_KHR_FORMAT_FEATURE_FLAGS_2_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_FORMAT_PROPERTIES_3_KHR
  , VkFormatFeatureFlags2KHR
  , VkFormatFeatureFlagBits2KHR
  , VkFormatProperties3KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2KHR
import Vulkan.Types.Enum.VkFormatFeatureFlags2KHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFormatProperties3KHR
import Vulkan.Types.VkFun



pattern VK_KHR_FORMAT_FEATURE_FLAGS_2_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_FORMAT_FEATURE_FLAGS_2_SPEC_VERSION = 2

pattern VK_KHR_FORMAT_FEATURE_FLAGS_2_EXTENSION_NAME :: CString
pattern VK_KHR_FORMAT_FEATURE_FLAGS_2_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_FORMAT_FEATURE_FLAGS_2_EXTENSION_NAME = Ptr ("VK_KHR_format_feature_flags2\0"##)

#else

module Vulkan.Ext.VK_KHR_format_feature_flags2 where

#endif