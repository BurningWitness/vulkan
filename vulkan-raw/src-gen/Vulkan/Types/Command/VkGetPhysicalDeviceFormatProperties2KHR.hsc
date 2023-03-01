{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkFormatProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFormatProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkFormat -- ^ format
       -> Ptr VkFormatProperties2 -- ^ pFormatProperties
       -> IO ()

vkFunGetPhysicalDeviceFormatProperties2KHR :: VkFun VkGetPhysicalDeviceFormatProperties2KHR
vkFunGetPhysicalDeviceFormatProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceFormatProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties2KHR where

#endif