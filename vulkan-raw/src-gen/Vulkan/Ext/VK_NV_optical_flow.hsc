{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_optical_flow

module Vulkan.Ext.VK_NV_optical_flow
  ( pattern VK_NV_OPTICAL_FLOW_SPEC_VERSION
  , pattern VK_NV_OPTICAL_FLOW_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_FEATURES_NV
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_OPTICAL_FLOW_PROPERTIES_NV
  , pattern VK_STRUCTURE_TYPE_OPTICAL_FLOW_IMAGE_FORMAT_INFO_NV
  , pattern VK_STRUCTURE_TYPE_OPTICAL_FLOW_IMAGE_FORMAT_PROPERTIES_NV
  , pattern VK_STRUCTURE_TYPE_OPTICAL_FLOW_SESSION_CREATE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_OPTICAL_FLOW_EXECUTE_INFO_NV
  , pattern VK_STRUCTURE_TYPE_OPTICAL_FLOW_SESSION_CREATE_PRIVATE_DATA_INFO_NV
  , pattern VK_FORMAT_R16G16_S10_5_NV
  , pattern VK_OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV
  , pattern VK_QUEUE_OPTICAL_FLOW_BIT_NV
  , pattern VK_PIPELINE_STAGE_2_OPTICAL_FLOW_BIT_NV
  , pattern VK_ACCESS_2_OPTICAL_FLOW_READ_BIT_NV
  , pattern VK_ACCESS_2_OPTICAL_FLOW_WRITE_BIT_NV
  , pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_IMAGE_BIT_NV
  , pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_VECTOR_BIT_NV
  , pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_COST_BIT_NV
  , VkPhysicalDeviceOpticalFlowFeaturesNV (..)
  , VkPhysicalDeviceOpticalFlowPropertiesNV (..)
  , VkOpticalFlowUsageFlagBitsNV
  , pattern VK_OPTICAL_FLOW_USAGE_UNKNOWN_NV
  , pattern VK_OPTICAL_FLOW_USAGE_INPUT_BIT_NV
  , pattern VK_OPTICAL_FLOW_USAGE_OUTPUT_BIT_NV
  , pattern VK_OPTICAL_FLOW_USAGE_HINT_BIT_NV
  , pattern VK_OPTICAL_FLOW_USAGE_COST_BIT_NV
  , pattern VK_OPTICAL_FLOW_USAGE_GLOBAL_FLOW_BIT_NV
  , VkOpticalFlowUsageFlagsNV
  , VkOpticalFlowImageFormatInfoNV (..)
  , VkOpticalFlowImageFormatPropertiesNV (..)
  , VkOpticalFlowGridSizeFlagBitsNV
  , pattern VK_OPTICAL_FLOW_GRID_SIZE_UNKNOWN_NV
  , pattern VK_OPTICAL_FLOW_GRID_SIZE_1X1_BIT_NV
  , pattern VK_OPTICAL_FLOW_GRID_SIZE_2X2_BIT_NV
  , pattern VK_OPTICAL_FLOW_GRID_SIZE_4X4_BIT_NV
  , pattern VK_OPTICAL_FLOW_GRID_SIZE_8X8_BIT_NV
  , VkOpticalFlowGridSizeFlagsNV
  , VkOpticalFlowPerformanceLevelNV
  , pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_UNKNOWN_NV
  , pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_SLOW_NV
  , pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_MEDIUM_NV
  , pattern VK_OPTICAL_FLOW_PERFORMANCE_LEVEL_FAST_NV
  , VkOpticalFlowSessionBindingPointNV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_UNKNOWN_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_INPUT_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_REFERENCE_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_HINT_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_FLOW_VECTOR_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_FLOW_VECTOR_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_COST_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_BACKWARD_COST_NV
  , pattern VK_OPTICAL_FLOW_SESSION_BINDING_POINT_GLOBAL_FLOW_NV
  , VkOpticalFlowSessionCreateFlagBitsNV
  , pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_HINT_BIT_NV
  , pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_COST_BIT_NV
  , pattern VK_OPTICAL_FLOW_SESSION_CREATE_ENABLE_GLOBAL_FLOW_BIT_NV
  , pattern VK_OPTICAL_FLOW_SESSION_CREATE_ALLOW_REGIONS_BIT_NV
  , pattern VK_OPTICAL_FLOW_SESSION_CREATE_BOTH_DIRECTIONS_BIT_NV
  , VkOpticalFlowSessionCreateFlagsNV
  , VkOpticalFlowExecuteFlagBitsNV
  , pattern VK_OPTICAL_FLOW_EXECUTE_DISABLE_TEMPORAL_HINTS_BIT_NV
  , VkOpticalFlowExecuteFlagsNV
  , VkOpticalFlowSessionNV_T
  , VkOpticalFlowSessionNV
  , VkOpticalFlowSessionCreateInfoNV (..)
  , VkOpticalFlowSessionCreatePrivateDataInfoNV (..)
  , VkOpticalFlowExecuteInfoNV (..)
  , VkGetPhysicalDeviceOpticalFlowImageFormatsNV
  , vkFunGetPhysicalDeviceOpticalFlowImageFormatsNV
  , VkCreateOpticalFlowSessionNV
  , vkFunCreateOpticalFlowSessionNV
  , VkDestroyOpticalFlowSessionNV
  , vkFunDestroyOpticalFlowSessionNV
  , VkBindOpticalFlowSessionImageNV
  , vkFunBindOpticalFlowSessionImageNV
  , VkCmdOpticalFlowExecuteNV
  , vkFunCmdOpticalFlowExecuteNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAccessFlagBits2
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkFormatFeatureFlagBits2
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkOpticalFlowExecuteFlagBitsNV
import Vulkan.Types.Enum.VkOpticalFlowExecuteFlagsNV
import Vulkan.Types.Enum.VkOpticalFlowGridSizeFlagBitsNV
import Vulkan.Types.Enum.VkOpticalFlowGridSizeFlagsNV
import Vulkan.Types.Enum.VkOpticalFlowPerformanceLevelNV
import Vulkan.Types.Enum.VkOpticalFlowSessionBindingPointNV
import Vulkan.Types.Enum.VkOpticalFlowSessionCreateFlagBitsNV
import Vulkan.Types.Enum.VkOpticalFlowSessionCreateFlagsNV
import Vulkan.Types.Enum.VkOpticalFlowUsageFlagBitsNV
import Vulkan.Types.Enum.VkOpticalFlowUsageFlagsNV
import Vulkan.Types.Enum.VkPipelineStageFlagBits2
import Vulkan.Types.Enum.VkQueueFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkOpticalFlowExecuteInfoNV
import Vulkan.Types.Struct.VkOpticalFlowImageFormatInfoNV
import Vulkan.Types.Struct.VkOpticalFlowImageFormatPropertiesNV
import Vulkan.Types.Struct.VkOpticalFlowSessionCreateInfoNV
import Vulkan.Types.Struct.VkOpticalFlowSessionCreatePrivateDataInfoNV
import Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowFeaturesNV
import Vulkan.Types.Struct.VkPhysicalDeviceOpticalFlowPropertiesNV
import Vulkan.Types.Command.VkBindOpticalFlowSessionImageNV
import Vulkan.Types.Command.VkCmdOpticalFlowExecuteNV
import Vulkan.Types.Command.VkCreateOpticalFlowSessionNV
import Vulkan.Types.Command.VkDestroyOpticalFlowSessionNV
import Vulkan.Types.Command.VkGetPhysicalDeviceOpticalFlowImageFormatsNV
import Vulkan.Types.VkFun



pattern VK_NV_OPTICAL_FLOW_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_OPTICAL_FLOW_SPEC_VERSION = 1

pattern VK_NV_OPTICAL_FLOW_EXTENSION_NAME :: CString
pattern VK_NV_OPTICAL_FLOW_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_OPTICAL_FLOW_EXTENSION_NAME = Ptr ("VK_NV_optical_flow\0"##)

#else

module Vulkan.Ext.VK_NV_optical_flow where

#endif