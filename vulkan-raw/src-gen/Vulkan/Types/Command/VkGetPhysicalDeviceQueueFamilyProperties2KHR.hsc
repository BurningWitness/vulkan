#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkQueueFamilyProperties2
import Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceQueueFamilyProperties2KHR = VkGetPhysicalDeviceQueueFamilyProperties2

vkFunGetPhysicalDeviceQueueFamilyProperties2KHR
  :: VkFun VkGetPhysicalDeviceQueueFamilyProperties2KHR
vkFunGetPhysicalDeviceQueueFamilyProperties2KHR = vkFunGetPhysicalDeviceQueueFamilyProperties2


#else

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2KHR where

#endif