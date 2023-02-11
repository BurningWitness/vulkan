#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Command.VkWaitSemaphoresKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreWaitInfo
import Vulkan.Types.Command.VkWaitSemaphores
import Vulkan.Types.VkFun



type VkWaitSemaphoresKHR = VkWaitSemaphores

vkFunWaitSemaphoresKHR
  :: VkFun VkWaitSemaphoresKHR
vkFunWaitSemaphoresKHR = vkFunWaitSemaphores


#else

module Vulkan.Types.Command.VkWaitSemaphoresKHR where

#endif