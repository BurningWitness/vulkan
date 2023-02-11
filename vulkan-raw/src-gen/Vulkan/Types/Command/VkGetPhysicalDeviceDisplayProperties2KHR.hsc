{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayProperties2KHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceDisplayProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkDisplayProperties2KHR -- ^ pProperties
       -> IO VkResult

vkFunGetPhysicalDeviceDisplayProperties2KHR :: VkFun VkGetPhysicalDeviceDisplayProperties2KHR
vkFunGetPhysicalDeviceDisplayProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceDisplayProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayProperties2KHR where

#endif