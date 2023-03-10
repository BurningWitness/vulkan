{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceProperties2 -- ^ pProperties
       -> IO ()

vkFunGetPhysicalDeviceProperties2KHR :: VkFun VkGetPhysicalDeviceProperties2KHR
vkFunGetPhysicalDeviceProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceProperties2KHR where

#endif