#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Command.VkSignalSemaphoreKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSemaphoreSignalInfo
import Vulkan.Types.Command.VkSignalSemaphore
import Vulkan.Types.VkFun



type VkSignalSemaphoreKHR = VkSignalSemaphore

vkFunSignalSemaphoreKHR
  :: VkFun VkSignalSemaphoreKHR
vkFunSignalSemaphoreKHR = vkFunSignalSemaphore


#else

module Vulkan.Types.Command.VkSignalSemaphoreKHR where

#endif