#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Command.VkGetDeviceImageMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirements
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.Command.VkGetDeviceImageMemoryRequirements
import Vulkan.Types.VkFun



type VkGetDeviceImageMemoryRequirementsKHR = VkGetDeviceImageMemoryRequirements

vkFunGetDeviceImageMemoryRequirementsKHR
  :: VkFun VkGetDeviceImageMemoryRequirementsKHR
vkFunGetDeviceImageMemoryRequirementsKHR = vkFunGetDeviceImageMemoryRequirements


#else

module Vulkan.Types.Command.VkGetDeviceImageMemoryRequirementsKHR where

#endif