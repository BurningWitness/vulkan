#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdResetEvent2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdResetEvent2
import Vulkan.Types.VkFun



type VkCmdResetEvent2KHR = VkCmdResetEvent2

vkFunCmdResetEvent2KHR
  :: VkFun VkCmdResetEvent2KHR
vkFunCmdResetEvent2KHR = vkFunCmdResetEvent2


#else

module Vulkan.Types.Command.VkCmdResetEvent2KHR where

#endif