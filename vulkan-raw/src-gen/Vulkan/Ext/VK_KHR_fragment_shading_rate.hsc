{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_fragment_shading_rate

module Vulkan.Ext.VK_KHR_fragment_shading_rate
  ( pattern VK_KHR_FRAGMENT_SHADING_RATE_SPEC_VERSION
  , pattern VK_KHR_FRAGMENT_SHADING_RATE_EXTENSION_NAME
  , VkFragmentShadingRateCombinerOpKHR
  , pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_KEEP_KHR
  , pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_REPLACE_KHR
  , pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MIN_KHR
  , pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MAX_KHR
  , pattern VK_FRAGMENT_SHADING_RATE_COMBINER_OP_MUL_KHR
  , VkFragmentShadingRateAttachmentInfoKHR (..)
  , VkPipelineFragmentShadingRateStateCreateInfoKHR (..)
  , VkPhysicalDeviceFragmentShadingRateFeaturesKHR (..)
  , VkPhysicalDeviceFragmentShadingRatePropertiesKHR (..)
  , VkPhysicalDeviceFragmentShadingRateKHR (..)
  , VkGetPhysicalDeviceFragmentShadingRatesKHR
  , vkFunGetPhysicalDeviceFragmentShadingRatesKHR
  , VkCmdSetFragmentShadingRateKHR
  , vkFunCmdSetFragmentShadingRateKHR
  , pattern VK_IMAGE_LAYOUT_FRAGMENT_SHADING_RATE_ATTACHMENT_OPTIMAL_KHR
  , pattern VK_DYNAMIC_STATE_FRAGMENT_SHADING_RATE_KHR
  , pattern VK_STRUCTURE_TYPE_FRAGMENT_SHADING_RATE_ATTACHMENT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_FRAGMENT_SHADING_RATE_STATE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_FRAGMENT_SHADING_RATE_KHR
  , pattern VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR
  , pattern VK_IMAGE_USAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
  , pattern VK_PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
  , pattern VK_FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
#if VK_KHR_format_feature_flags2
  , pattern VK_FORMAT_FEATURE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits
import Vulkan.Types.Enum.VkDynamicState
import Vulkan.Types.Enum.VkFormatFeatureFlagBits
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkFragmentShadingRateCombinerOpKHR
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkImageUsageFlagBits
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkFragmentShadingRateAttachmentInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRateKHR
import Vulkan.Types.Struct.VkPhysicalDeviceFragmentShadingRatePropertiesKHR
import Vulkan.Types.Struct.VkPipelineFragmentShadingRateStateCreateInfoKHR
import Vulkan.Types.Command.VkCmdSetFragmentShadingRateKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceFragmentShadingRatesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_FRAGMENT_SHADING_RATE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_FRAGMENT_SHADING_RATE_SPEC_VERSION = 2

pattern VK_KHR_FRAGMENT_SHADING_RATE_EXTENSION_NAME :: CString
pattern VK_KHR_FRAGMENT_SHADING_RATE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_FRAGMENT_SHADING_RATE_EXTENSION_NAME = Ptr ("VK_KHR_fragment_shading_rate\0"##)

#else

module Vulkan.Ext.VK_KHR_fragment_shading_rate where

#endif