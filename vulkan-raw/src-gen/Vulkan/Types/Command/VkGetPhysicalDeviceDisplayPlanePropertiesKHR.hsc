{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPlanePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayPlanePropertiesKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceDisplayPlanePropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkDisplayPlanePropertiesKHR -- ^ pProperties
       -> IO VkResult

vkFunGetPhysicalDeviceDisplayPlanePropertiesKHR :: VkFun VkGetPhysicalDeviceDisplayPlanePropertiesKHR
vkFunGetPhysicalDeviceDisplayPlanePropertiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceDisplayPlanePropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPlanePropertiesKHR where

#endif