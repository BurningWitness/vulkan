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
import Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceImageFormatProperties2KHR = VkGetPhysicalDeviceImageFormatProperties2

vkFunGetPhysicalDeviceImageFormatProperties2KHR
  :: VkFun VkGetPhysicalDeviceImageFormatProperties2KHR
vkFunGetPhysicalDeviceImageFormatProperties2KHR = vkFunGetPhysicalDeviceImageFormatProperties2


#else

module Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2KHR where

#endif