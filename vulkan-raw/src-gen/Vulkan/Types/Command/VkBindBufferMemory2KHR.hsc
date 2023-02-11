#include <vulkan/vulkan.h>

#if VK_KHR_bind_memory2

module Vulkan.Types.Command.VkBindBufferMemory2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBindBufferMemoryInfo
import Vulkan.Types.Command.VkBindBufferMemory2
import Vulkan.Types.VkFun



type VkBindBufferMemory2KHR = VkBindBufferMemory2

vkFunBindBufferMemory2KHR
  :: VkFun VkBindBufferMemory2KHR
vkFunBindBufferMemory2KHR = vkFunBindBufferMemory2


#else

module Vulkan.Types.Command.VkBindBufferMemory2KHR where

#endif