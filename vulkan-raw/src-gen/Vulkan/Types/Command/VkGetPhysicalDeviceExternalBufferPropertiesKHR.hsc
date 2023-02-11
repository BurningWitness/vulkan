#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalBufferProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo
import Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalBufferPropertiesKHR = VkGetPhysicalDeviceExternalBufferProperties

vkFunGetPhysicalDeviceExternalBufferPropertiesKHR
  :: VkFun VkGetPhysicalDeviceExternalBufferPropertiesKHR
vkFunGetPhysicalDeviceExternalBufferPropertiesKHR = vkFunGetPhysicalDeviceExternalBufferProperties


#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferPropertiesKHR where

#endif