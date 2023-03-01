{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPerformanceCounterDescriptionKHR
import Vulkan.Types.Struct.VkPerformanceCounterKHR
import Vulkan.Types.VkFun



type VkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> Ptr #{type uint32_t} -- ^ pCounterCount
       -> Ptr VkPerformanceCounterKHR -- ^ pCounters
       -> Ptr VkPerformanceCounterDescriptionKHR -- ^ pCounterDescriptions
       -> IO VkResult

vkFunEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR :: VkFun VkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR
vkFunEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = VkFun (Ptr ("vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR\0"##))

#else

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR where

#endif