{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayPropertiesKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceDisplayPropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkDisplayPropertiesKHR -- ^ pProperties
       -> IO VkResult

vkFunGetPhysicalDeviceDisplayPropertiesKHR :: VkFun VkGetPhysicalDeviceDisplayPropertiesKHR
vkFunGetPhysicalDeviceDisplayPropertiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceDisplayPropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceDisplayPropertiesKHR where

#endif