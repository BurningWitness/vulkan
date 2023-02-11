#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdWaitEvents2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.Command.VkCmdWaitEvents2
import Vulkan.Types.VkFun



type VkCmdWaitEvents2KHR = VkCmdWaitEvents2

vkFunCmdWaitEvents2KHR
  :: VkFun VkCmdWaitEvents2KHR
vkFunCmdWaitEvents2KHR = vkFunCmdWaitEvents2


#else

module Vulkan.Types.Command.VkCmdWaitEvents2KHR where

#endif