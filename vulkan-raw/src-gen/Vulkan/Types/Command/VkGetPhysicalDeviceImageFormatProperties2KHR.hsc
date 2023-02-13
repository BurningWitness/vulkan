{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageFormatProperties2
import Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceImageFormatProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceImageFormatInfo2 -- ^ pImageFormatInfo
       -> Ptr VkImageFormatProperties2 -- ^ pImageFormatProperties
       -> IO VkResult

vkFunGetPhysicalDeviceImageFormatProperties2KHR :: VkFun VkGetPhysicalDeviceImageFormatProperties2KHR
vkFunGetPhysicalDeviceImageFormatProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceImageFormatProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2KHR where

#endif