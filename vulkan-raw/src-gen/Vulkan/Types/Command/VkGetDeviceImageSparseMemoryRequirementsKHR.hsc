#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceImageMemoryRequirements
import Vulkan.Types.Struct.VkSparseImageMemoryRequirements2
import Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirements
import Vulkan.Types.VkFun



type VkGetDeviceImageSparseMemoryRequirementsKHR = VkGetDeviceImageSparseMemoryRequirements

vkFunGetDeviceImageSparseMemoryRequirementsKHR
  :: VkFun VkGetDeviceImageSparseMemoryRequirementsKHR
vkFunGetDeviceImageSparseMemoryRequirementsKHR = vkFunGetDeviceImageSparseMemoryRequirements


#else

module Vulkan.Types.Command.VkGetDeviceImageSparseMemoryRequirementsKHR where

#endif