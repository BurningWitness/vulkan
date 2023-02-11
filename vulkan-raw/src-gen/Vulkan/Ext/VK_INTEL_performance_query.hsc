{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_INTEL_performance_query

module Vulkan.Ext.VK_INTEL_performance_query
  ( pattern VK_INTEL_PERFORMANCE_QUERY_SPEC_VERSION
  , pattern VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_QUERY_CREATE_INFO_INTEL
  , pattern VK_STRUCTURE_TYPE_QUERY_POOL_CREATE_INFO_INTEL
  , pattern VK_STRUCTURE_TYPE_INITIALIZE_PERFORMANCE_API_INFO_INTEL
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_MARKER_INFO_INTEL
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_STREAM_MARKER_INFO_INTEL
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_OVERRIDE_INFO_INTEL
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_CONFIGURATION_ACQUIRE_INFO_INTEL
  , pattern VK_QUERY_TYPE_PERFORMANCE_QUERY_INTEL
  , pattern VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL
  , VkPerformanceConfigurationTypeINTEL
  , pattern VK_PERFORMANCE_CONFIGURATION_TYPE_COMMAND_QUEUE_METRICS_DISCOVERY_ACTIVATED_INTEL
  , VkQueryPoolSamplingModeINTEL
  , pattern VK_QUERY_POOL_SAMPLING_MODE_MANUAL_INTEL
  , VkPerformanceOverrideTypeINTEL
  , pattern VK_PERFORMANCE_OVERRIDE_TYPE_NULL_HARDWARE_INTEL
  , pattern VK_PERFORMANCE_OVERRIDE_TYPE_FLUSH_GPU_CACHES_INTEL
  , VkPerformanceParameterTypeINTEL
  , pattern VK_PERFORMANCE_PARAMETER_TYPE_HW_COUNTERS_SUPPORTED_INTEL
  , pattern VK_PERFORMANCE_PARAMETER_TYPE_STREAM_MARKER_VALID_BITS_INTEL
  , VkPerformanceValueTypeINTEL
  , pattern VK_PERFORMANCE_VALUE_TYPE_UINT32_INTEL
  , pattern VK_PERFORMANCE_VALUE_TYPE_UINT64_INTEL
  , pattern VK_PERFORMANCE_VALUE_TYPE_FLOAT_INTEL
  , pattern VK_PERFORMANCE_VALUE_TYPE_BOOL_INTEL
  , pattern VK_PERFORMANCE_VALUE_TYPE_STRING_INTEL
  , VkPerformanceValueDataINTEL (..)
  , VkPerformanceValueINTEL (..)
  , VkInitializePerformanceApiInfoINTEL (..)
  , VkQueryPoolCreateInfoINTEL
  , VkQueryPoolPerformanceQueryCreateInfoINTEL (..)
  , VkPerformanceMarkerInfoINTEL (..)
  , VkPerformanceStreamMarkerInfoINTEL (..)
  , VkPerformanceOverrideInfoINTEL (..)
  , VkPerformanceConfigurationAcquireInfoINTEL (..)
  , VkPerformanceConfigurationINTEL_T
  , VkPerformanceConfigurationINTEL
  , VkInitializePerformanceApiINTEL
  , vkFunInitializePerformanceApiINTEL
  , VkUninitializePerformanceApiINTEL
  , vkFunUninitializePerformanceApiINTEL
  , VkCmdSetPerformanceMarkerINTEL
  , vkFunCmdSetPerformanceMarkerINTEL
  , VkCmdSetPerformanceStreamMarkerINTEL
  , vkFunCmdSetPerformanceStreamMarkerINTEL
  , VkCmdSetPerformanceOverrideINTEL
  , vkFunCmdSetPerformanceOverrideINTEL
  , VkAcquirePerformanceConfigurationINTEL
  , vkFunAcquirePerformanceConfigurationINTEL
  , VkReleasePerformanceConfigurationINTEL
  , vkFunReleasePerformanceConfigurationINTEL
  , VkQueueSetPerformanceConfigurationINTEL
  , vkFunQueueSetPerformanceConfigurationINTEL
  , VkGetPerformanceParameterINTEL
  , vkFunGetPerformanceParameterINTEL
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkPerformanceConfigurationTypeINTEL
import Vulkan.Types.Enum.VkPerformanceOverrideTypeINTEL
import Vulkan.Types.Enum.VkPerformanceParameterTypeINTEL
import Vulkan.Types.Enum.VkPerformanceValueTypeINTEL
import Vulkan.Types.Enum.VkQueryPoolSamplingModeINTEL
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkInitializePerformanceApiInfoINTEL
import Vulkan.Types.Struct.VkPerformanceConfigurationAcquireInfoINTEL
import Vulkan.Types.Struct.VkPerformanceMarkerInfoINTEL
import Vulkan.Types.Struct.VkPerformanceOverrideInfoINTEL
import Vulkan.Types.Struct.VkPerformanceStreamMarkerInfoINTEL
import Vulkan.Types.Struct.VkPerformanceValueINTEL
import Vulkan.Types.Struct.VkQueryPoolCreateInfoINTEL
import Vulkan.Types.Struct.VkQueryPoolPerformanceQueryCreateInfoINTEL
import Vulkan.Types.Union.VkPerformanceValueDataINTEL
import Vulkan.Types.Command.VkAcquirePerformanceConfigurationINTEL
import Vulkan.Types.Command.VkCmdSetPerformanceMarkerINTEL
import Vulkan.Types.Command.VkCmdSetPerformanceOverrideINTEL
import Vulkan.Types.Command.VkCmdSetPerformanceStreamMarkerINTEL
import Vulkan.Types.Command.VkGetPerformanceParameterINTEL
import Vulkan.Types.Command.VkInitializePerformanceApiINTEL
import Vulkan.Types.Command.VkQueueSetPerformanceConfigurationINTEL
import Vulkan.Types.Command.VkReleasePerformanceConfigurationINTEL
import Vulkan.Types.Command.VkUninitializePerformanceApiINTEL
import Vulkan.Types.VkFun



pattern VK_INTEL_PERFORMANCE_QUERY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_INTEL_PERFORMANCE_QUERY_SPEC_VERSION = 2

pattern VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME :: CString
pattern VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME <- (const False -> True)
  where
    VK_INTEL_PERFORMANCE_QUERY_EXTENSION_NAME = Ptr ("VK_INTEL_performance_query\0"##)

#else

module Vulkan.Ext.VK_INTEL_performance_query where

#endif