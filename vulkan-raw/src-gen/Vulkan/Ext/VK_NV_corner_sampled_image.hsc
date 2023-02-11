{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_corner_sampled_image

module Vulkan.Ext.VK_NV_corner_sampled_image
  ( pattern VK_NV_CORNER_SAMPLED_IMAGE_SPEC_VERSION
  , pattern VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME
  , pattern VK_IMAGE_CREATE_CORNER_SAMPLED_BIT_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_CORNER_SAMPLED_IMAGE_FEATURES_NV
  , VkPhysicalDeviceCornerSampledImageFeaturesNV (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkImageCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceCornerSampledImageFeaturesNV
import Vulkan.Types.VkFun



pattern VK_NV_CORNER_SAMPLED_IMAGE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_CORNER_SAMPLED_IMAGE_SPEC_VERSION = 2

pattern VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME :: CString
pattern VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_CORNER_SAMPLED_IMAGE_EXTENSION_NAME = Ptr ("VK_NV_corner_sampled_image\0"##)

#else

module Vulkan.Ext.VK_NV_corner_sampled_image where

#endif