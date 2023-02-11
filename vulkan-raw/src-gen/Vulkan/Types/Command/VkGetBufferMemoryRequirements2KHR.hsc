#include <vulkan/vulkan.h>

#if VK_KHR_get_memory_requirements2

module Vulkan.Types.Command.VkGetBufferMemoryRequirements2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferMemoryRequirementsInfo2
import Vulkan.Types.Struct.VkMemoryRequirements2
import Vulkan.Types.Command.VkGetBufferMemoryRequirements2
import Vulkan.Types.VkFun



type VkGetBufferMemoryRequirements2KHR = VkGetBufferMemoryRequirements2

vkFunGetBufferMemoryRequirements2KHR
  :: VkFun VkGetBufferMemoryRequirements2KHR
vkFunGetBufferMemoryRequirements2KHR = vkFunGetBufferMemoryRequirements2


#else

module Vulkan.Types.Command.VkGetBufferMemoryRequirements2KHR where

#endif