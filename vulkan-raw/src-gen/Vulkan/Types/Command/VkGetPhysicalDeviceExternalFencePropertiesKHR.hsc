#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_capabilities

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalFencePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalFenceProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo
import Vulkan.Types.Command.VkGetPhysicalDeviceExternalFenceProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalFencePropertiesKHR = VkGetPhysicalDeviceExternalFenceProperties

vkFunGetPhysicalDeviceExternalFencePropertiesKHR
  :: VkFun VkGetPhysicalDeviceExternalFencePropertiesKHR
vkFunGetPhysicalDeviceExternalFencePropertiesKHR = vkFunGetPhysicalDeviceExternalFenceProperties


#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalFencePropertiesKHR where

#endif