#include <vulkan/vulkan.h>

#if VK_EXT_tooling_info

module Vulkan.Types.Command.VkGetPhysicalDeviceToolPropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceToolProperties
import Vulkan.Types.Command.VkGetPhysicalDeviceToolProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceToolPropertiesEXT = VkGetPhysicalDeviceToolProperties

vkFunGetPhysicalDeviceToolPropertiesEXT
  :: VkFun VkGetPhysicalDeviceToolPropertiesEXT
vkFunGetPhysicalDeviceToolPropertiesEXT = vkFunGetPhysicalDeviceToolProperties


#else

module Vulkan.Types.Command.VkGetPhysicalDeviceToolPropertiesEXT where

#endif