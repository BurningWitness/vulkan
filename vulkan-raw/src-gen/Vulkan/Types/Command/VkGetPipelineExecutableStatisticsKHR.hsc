{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Command.VkGetPipelineExecutableStatisticsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineExecutableInfoKHR
import Vulkan.Types.Struct.VkPipelineExecutableStatisticKHR
import Vulkan.Types.VkFun



type VkGetPipelineExecutableStatisticsKHR =
          VkDevice -- ^ device
       -> Ptr VkPipelineExecutableInfoKHR -- ^ pExecutableInfo
       -> Ptr #{type uint32_t} -- ^ pStatisticCount
       -> Ptr VkPipelineExecutableStatisticKHR -- ^ pStatistics
       -> IO VkResult

vkFunGetPipelineExecutableStatisticsKHR :: VkFun VkGetPipelineExecutableStatisticsKHR
vkFunGetPipelineExecutableStatisticsKHR = VkFun (Ptr ("vkGetPipelineExecutableStatisticsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPipelineExecutableStatisticsKHR where

#endif