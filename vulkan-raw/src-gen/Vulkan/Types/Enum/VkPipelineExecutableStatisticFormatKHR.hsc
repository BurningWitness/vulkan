{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineExecutableStatisticFormatKHR where

import Data.Int



#if VK_KHR_pipeline_executable_properties
type VkPipelineExecutableStatisticFormatKHR = #{type int}
#endif

#if VK_KHR_pipeline_executable_properties
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_BOOL32_KHR = 0
#endif

#if VK_KHR_pipeline_executable_properties
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_INT64_KHR = 1
#endif

#if VK_KHR_pipeline_executable_properties
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_UINT64_KHR = 2
#endif

#if VK_KHR_pipeline_executable_properties
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_EXECUTABLE_STATISTIC_FORMAT_FLOAT64_KHR = 3
#endif