#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdWriteTimestamp2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdWriteTimestamp2
import Vulkan.Types.VkFun



type VkCmdWriteTimestamp2KHR = VkCmdWriteTimestamp2

vkFunCmdWriteTimestamp2KHR
  :: VkFun VkCmdWriteTimestamp2KHR
vkFunCmdWriteTimestamp2KHR = vkFunCmdWriteTimestamp2


#else

module Vulkan.Types.Command.VkCmdWriteTimestamp2KHR where

#endif