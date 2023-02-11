{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Ext.VK_KHR_performance_query
  ( pattern VK_KHR_PERFORMANCE_QUERY_SPEC_VERSION
  , pattern VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME
  , pattern VK_QUERY_TYPE_PERFORMANCE_QUERY_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PERFORMANCE_QUERY_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_QUERY_POOL_PERFORMANCE_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_QUERY_SUBMIT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_ACQUIRE_PROFILING_LOCK_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_KHR
  , pattern VK_STRUCTURE_TYPE_PERFORMANCE_COUNTER_DESCRIPTION_KHR
  , VkPhysicalDevicePerformanceQueryFeaturesKHR (..)
  , VkPhysicalDevicePerformanceQueryPropertiesKHR (..)
  , VkPerformanceCounterKHR (..)
  , VkPerformanceCounterDescriptionKHR (..)
  , VkPerformanceCounterDescriptionFlagsKHR
  , VkPerformanceCounterDescriptionFlagBitsKHR
  , pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_BIT_KHR
  , pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_PERFORMANCE_IMPACTING_KHR
  , pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_BIT_KHR
  , pattern VK_PERFORMANCE_COUNTER_DESCRIPTION_CONCURRENTLY_IMPACTED_KHR
  , VkQueryPoolPerformanceCreateInfoKHR (..)
  , VkPerformanceCounterScopeKHR
  , pattern VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_BUFFER_KHR
  , pattern VK_PERFORMANCE_COUNTER_SCOPE_RENDER_PASS_KHR
  , pattern VK_PERFORMANCE_COUNTER_SCOPE_COMMAND_KHR
  , pattern VK_QUERY_SCOPE_COMMAND_BUFFER_KHR
  , pattern VK_QUERY_SCOPE_RENDER_PASS_KHR
  , pattern VK_QUERY_SCOPE_COMMAND_KHR
  , VkPerformanceCounterStorageKHR
  , pattern VK_PERFORMANCE_COUNTER_STORAGE_INT32_KHR
  , pattern VK_PERFORMANCE_COUNTER_STORAGE_INT64_KHR
  , pattern VK_PERFORMANCE_COUNTER_STORAGE_UINT32_KHR
  , pattern VK_PERFORMANCE_COUNTER_STORAGE_UINT64_KHR
  , pattern VK_PERFORMANCE_COUNTER_STORAGE_FLOAT32_KHR
  , pattern VK_PERFORMANCE_COUNTER_STORAGE_FLOAT64_KHR
  , VkPerformanceCounterUnitKHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_GENERIC_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_PERCENTAGE_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_NANOSECONDS_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_BYTES_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_BYTES_PER_SECOND_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_KELVIN_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_WATTS_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_VOLTS_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_AMPS_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_HERTZ_KHR
  , pattern VK_PERFORMANCE_COUNTER_UNIT_CYCLES_KHR
  , VkPerformanceCounterResultKHR (..)
  , VkAcquireProfilingLockInfoKHR (..)
  , VkAcquireProfilingLockFlagsKHR
  , VkAcquireProfilingLockFlagBitsKHR
  , VkPerformanceQuerySubmitInfoKHR (..)
  , VkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR
  , vkFunEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR
  , VkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR
  , vkFunGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR
  , VkAcquireProfilingLockKHR
  , vkFunAcquireProfilingLockKHR
  , VkReleaseProfilingLockKHR
  , vkFunReleaseProfilingLockKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkAcquireProfilingLockFlagBitsKHR
import Vulkan.Types.Enum.VkAcquireProfilingLockFlagsKHR
import Vulkan.Types.Enum.VkPerformanceCounterDescriptionFlagBitsKHR
import Vulkan.Types.Enum.VkPerformanceCounterDescriptionFlagsKHR
import Vulkan.Types.Enum.VkPerformanceCounterScopeKHR
import Vulkan.Types.Enum.VkPerformanceCounterStorageKHR
import Vulkan.Types.Enum.VkPerformanceCounterUnitKHR
import Vulkan.Types.Enum.VkQueryType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAcquireProfilingLockInfoKHR
import Vulkan.Types.Struct.VkPerformanceCounterDescriptionKHR
import Vulkan.Types.Struct.VkPerformanceCounterKHR
import Vulkan.Types.Struct.VkPerformanceQuerySubmitInfoKHR
import Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryFeaturesKHR
import Vulkan.Types.Struct.VkPhysicalDevicePerformanceQueryPropertiesKHR
import Vulkan.Types.Struct.VkQueryPoolPerformanceCreateInfoKHR
import Vulkan.Types.Union.VkPerformanceCounterResultKHR
import Vulkan.Types.Command.VkAcquireProfilingLockKHR
import Vulkan.Types.Command.VkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR
import Vulkan.Types.Command.VkReleaseProfilingLockKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PERFORMANCE_QUERY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PERFORMANCE_QUERY_SPEC_VERSION = 1

pattern VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME :: CString
pattern VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PERFORMANCE_QUERY_EXTENSION_NAME = Ptr ("VK_KHR_performance_query\0"##)

#else

module Vulkan.Ext.VK_KHR_performance_query where

#endif