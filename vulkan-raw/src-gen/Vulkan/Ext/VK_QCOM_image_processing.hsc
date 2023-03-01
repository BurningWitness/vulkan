{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_QCOM_image_processing

module Vulkan.Ext.VK_QCOM_image_processing
  ( pattern VK_QCOM_IMAGE_PROCESSING_SPEC_VERSION
  , pattern VK_QCOM_IMAGE_PROCESSING_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_FEATURES_QCOM
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_IMAGE_PROCESSING_PROPERTIES_QCOM
  , pattern VK_STRUCTURE_TYPE_IMAGE_VIEW_SAMPLE_WEIGHT_CREATE_INFO_QCOM
  , pattern VK_SAMPLER_CREATE_IMAGE_PROCESSING_BIT_QCOM
  , pattern VK_IMAGE_USAGE_SAMPLE_WEIGHT_BIT_QCOM
  , pattern VK_IMAGE_USAGE_SAMPLE_BLOCK_MATCH_BIT_QCOM
  , pattern VK_DESCRIPTOR_TYPE_SAMPLE_WEIGHT_IMAGE_QCOM
  , pattern VK_DESCRIPTOR_TYPE_BLOCK_MATCH_IMAGE_QCOM
  , VkImageViewSampleWeightCreateInfoQCOM (..)
  , VkPhysicalDeviceImageProcessingFeaturesQCOM (..)
  , VkPhysicalDeviceImageProcessingPropertiesQCOM (..)
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM
  , pattern VK_FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM
  , pattern VK_FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM
  , pattern VK_FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDescriptorType
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkSamplerCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageViewSampleWeightCreateInfoQCOM
import Vulkan.Types.Struct.VkPhysicalDeviceImageProcessingFeaturesQCOM
import Vulkan.Types.Struct.VkPhysicalDeviceImageProcessingPropertiesQCOM
import Vulkan.Types.VkFun



pattern VK_QCOM_IMAGE_PROCESSING_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_QCOM_IMAGE_PROCESSING_SPEC_VERSION = 1

pattern VK_QCOM_IMAGE_PROCESSING_EXTENSION_NAME :: CString
pattern VK_QCOM_IMAGE_PROCESSING_EXTENSION_NAME <- (const False -> True)
  where
    VK_QCOM_IMAGE_PROCESSING_EXTENSION_NAME = Ptr ("VK_QCOM_image_processing\0"##)

#else

module Vulkan.Ext.VK_QCOM_image_processing where

#endif