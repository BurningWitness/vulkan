{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_performance_query

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkQueryPoolPerformanceCreateInfoKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkQueryPoolPerformanceCreateInfoKHR -- ^ pPerformanceQueryCreateInfo
       -> Ptr #{type uint32_t} -- ^ pNumPasses
       -> IO ()

vkFunGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR :: VkFun VkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR
vkFunGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = VkFun (Ptr ("vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR where

#endif