{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Ext.VK_KHR_pipeline_executable_properties
  ( pattern VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_SPEC_VERSION
  , pattern VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_EXECUTABLE_PROPERTIES_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_STATISTIC_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_EXECUTABLE_INTERNAL_REPRESENTATION_KHR
  , pattern VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR
  , pattern VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR
  , VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR (..)
  , VkPipelineInfoKHR (..)
  , VkPipelineExecutablePropertiesKHR (..)
  , VkPipelineExecutableInfoKHR (..)
  , VkPipelineExecutableStatisticFormatKHR
  , pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR
  , pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR
  , pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR
  , pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR
  , VkPipelineExecutableStatisticValueKHR (..)
  , VkPipelineExecutableStatisticKHR (..)
  , VkPipelineExecutableInternalRepresentationKHR (..)
  , VkGetPipelineExecutablePropertiesKHR
  , vkFunGetPipelineExecutablePropertiesKHR
  , VkGetPipelineExecutableStatisticsKHR
  , vkFunGetPipelineExecutableStatisticsKHR
  , VkGetPipelineExecutableInternalRepresentationsKHR
  , vkFunGetPipelineExecutableInternalRepresentationsKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineExecutableStatisticFormatKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePipelineExecutablePropertiesFeaturesKHR
import Vulkan.Types.Struct.VkPipelineExecutableInfoKHR
import Vulkan.Types.Struct.VkPipelineExecutableInternalRepresentationKHR
import Vulkan.Types.Struct.VkPipelineExecutablePropertiesKHR
import Vulkan.Types.Struct.VkPipelineExecutableStatisticKHR
import Vulkan.Types.Struct.VkPipelineInfoKHR
import Vulkan.Types.Union.VkPipelineExecutableStatisticValueKHR
import Vulkan.Types.Command.VkGetPipelineExecutableInternalRepresentationsKHR
import Vulkan.Types.Command.VkGetPipelineExecutablePropertiesKHR
import Vulkan.Types.Command.VkGetPipelineExecutableStatisticsKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_SPEC_VERSION = 1

pattern VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME :: CString
pattern VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PIPELINE_EXECUTABLE_PROPERTIES_EXTENSION_NAME = Ptr ("VK_KHR_pipeline_executable_properties\0"##)

#else

module Vulkan.Ext.VK_KHR_pipeline_executable_properties where

#endif