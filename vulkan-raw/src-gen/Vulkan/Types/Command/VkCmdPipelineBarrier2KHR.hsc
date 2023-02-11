#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdPipelineBarrier2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.Command.VkCmdPipelineBarrier2
import Vulkan.Types.VkFun



type VkCmdPipelineBarrier2KHR = VkCmdPipelineBarrier2

vkFunCmdPipelineBarrier2KHR
  :: VkFun VkCmdPipelineBarrier2KHR
vkFunCmdPipelineBarrier2KHR = vkFunCmdPipelineBarrier2


#else

module Vulkan.Types.Command.VkCmdPipelineBarrier2KHR where

#endif