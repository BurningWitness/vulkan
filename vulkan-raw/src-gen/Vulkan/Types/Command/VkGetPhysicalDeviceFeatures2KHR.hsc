#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures2
import Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFeatures2KHR = VkGetPhysicalDeviceFeatures2

vkFunGetPhysicalDeviceFeatures2KHR
  :: VkFun VkGetPhysicalDeviceFeatures2KHR
vkFunGetPhysicalDeviceFeatures2KHR = vkFunGetPhysicalDeviceFeatures2


#else

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2KHR where

#endif