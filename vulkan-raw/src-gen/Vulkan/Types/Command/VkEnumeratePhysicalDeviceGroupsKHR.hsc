#include <vulkan/vulkan.h>

#if VK_KHR_device_group_creation

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroupsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceGroupProperties
import Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroups
import Vulkan.Types.VkFun



type VkEnumeratePhysicalDeviceGroupsKHR = VkEnumeratePhysicalDeviceGroups

vkFunEnumeratePhysicalDeviceGroupsKHR
  :: VkFun VkEnumeratePhysicalDeviceGroupsKHR
vkFunEnumeratePhysicalDeviceGroupsKHR = vkFunEnumeratePhysicalDeviceGroups


#else

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroupsKHR where

#endif