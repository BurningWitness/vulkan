#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Command.VkGetImageMemoryRequirements2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.Command.VkGetImageMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetImageMemoryRequirements2KHR = VkGetImageMemoryRequirements2

vkFunGetImageMemoryRequirements2KHR
  :: VkFun VkGetImageMemoryRequirements2KHR
vkFunGetImageMemoryRequirements2KHR = vkFunGetImageMemoryRequirements2


#else

module Vulkan.Types.Command.VkGetImageMemoryRequirements2KHR where

#endif