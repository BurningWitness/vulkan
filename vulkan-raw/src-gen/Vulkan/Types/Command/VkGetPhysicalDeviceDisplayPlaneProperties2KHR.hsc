{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPlaneProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayPlaneProperties2KHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceDisplayPlaneProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkDisplayPlaneProperties2KHR -- ^ pProperties
       -> IO VkResult

vkFunGetPhysicalDeviceDisplayPlaneProperties2KHR :: VkFun VkGetPhysicalDeviceDisplayPlaneProperties2KHR
vkFunGetPhysicalDeviceDisplayPlaneProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceDisplayPlaneProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPlaneProperties2KHR where

#endif