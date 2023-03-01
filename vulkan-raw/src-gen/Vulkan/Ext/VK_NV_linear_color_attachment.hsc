{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_linear_color_attachment

module Vulkan.Ext.VK_NV_linear_color_attachment
  ( pattern VK_NV_LINEAR_COLOR_ATTACHMENT_SPEC_VERSION
  , pattern VK_NV_LINEAR_COLOR_ATTACHMENT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_LINEAR_COLOR_ATTACHMENT_FEATURES_NV
  , VkPhysicalDeviceLinearColorAttachmentFeaturesNV (..)
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_LINEAR_COLOR_ATTACHMENT_BIT_NV
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceLinearColorAttachmentFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_LINEAR_COLOR_ATTACHMENT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_LINEAR_COLOR_ATTACHMENT_SPEC_VERSION = 1

pattern VK_NV_LINEAR_COLOR_ATTACHMENT_EXTENSION_NAME :: CString
pattern VK_NV_LINEAR_COLOR_ATTACHMENT_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_LINEAR_COLOR_ATTACHMENT_EXTENSION_NAME = Ptr ("VK_NV_linear_color_attachment\0"##)

#else

module Vulkan.Ext.VK_NV_linear_color_attachment where

#endif