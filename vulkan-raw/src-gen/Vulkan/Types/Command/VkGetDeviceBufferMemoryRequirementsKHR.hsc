#include <vulkan/vulkan.h>

#if VK_KHR_maintenance4

module Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirementsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceBufferMemoryRequirements
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirements
import Vulkan.Types.VkFun



type VkGetDeviceBufferMemoryRequirementsKHR = VkGetDeviceBufferMemoryRequirements

vkFunGetDeviceBufferMemoryRequirementsKHR
  :: VkFun VkGetDeviceBufferMemoryRequirementsKHR
vkFunGetDeviceBufferMemoryRequirementsKHR = vkFunGetDeviceBufferMemoryRequirements


#else

module Vulkan.Types.Command.VkGetDeviceBufferMemoryRequirementsKHR where

#endif