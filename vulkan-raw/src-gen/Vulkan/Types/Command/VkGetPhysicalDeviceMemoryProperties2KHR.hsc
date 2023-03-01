{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceMemoryProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceMemoryProperties2 -- ^ pMemoryProperties
       -> IO ()

vkFunGetPhysicalDeviceMemoryProperties2KHR :: VkFun VkGetPhysicalDeviceMemoryProperties2KHR
vkFunGetPhysicalDeviceMemoryProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceMemoryProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties2KHR where

#endif