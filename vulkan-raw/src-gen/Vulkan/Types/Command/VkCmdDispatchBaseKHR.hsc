#include <vulkan/vulkan.h>

#if VK_KHR_device_group

module Vulkan.Types.Command.VkCmdDispatchBaseKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdDispatchBase
import Vulkan.Types.VkFun



type VkCmdDispatchBaseKHR = VkCmdDispatchBase

vkFunCmdDispatchBaseKHR
  :: VkFun VkCmdDispatchBaseKHR
vkFunCmdDispatchBaseKHR = vkFunCmdDispatchBase


#else

module Vulkan.Types.Command.VkCmdDispatchBaseKHR where

#endif