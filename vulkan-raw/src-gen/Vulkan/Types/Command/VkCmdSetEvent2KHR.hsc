#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdSetEvent2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.Command.VkCmdSetEvent2
import Vulkan.Types.VkFun



type VkCmdSetEvent2KHR = VkCmdSetEvent2

vkFunCmdSetEvent2KHR
  :: VkFun VkCmdSetEvent2KHR
vkFunCmdSetEvent2KHR = vkFunCmdSetEvent2


#else

module Vulkan.Types.Command.VkCmdSetEvent2KHR where

#endif