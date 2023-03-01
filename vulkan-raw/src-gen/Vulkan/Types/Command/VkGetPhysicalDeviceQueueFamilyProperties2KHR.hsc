{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkQueueFamilyProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceQueueFamilyProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pQueueFamilyPropertyCount
       -> Ptr VkQueueFamilyProperties2 -- ^ pQueueFamilyProperties
       -> IO ()

vkFunGetPhysicalDeviceQueueFamilyProperties2KHR :: VkFun VkGetPhysicalDeviceQueueFamilyProperties2KHR
vkFunGetPhysicalDeviceQueueFamilyProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceQueueFamilyProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2KHR where

#endif