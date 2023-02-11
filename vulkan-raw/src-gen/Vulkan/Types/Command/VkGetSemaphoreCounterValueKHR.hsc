#include <vulkan/vulkan.h>

#if VK_KHR_timeline_semaphore

module Vulkan.Types.Command.VkGetSemaphoreCounterValueKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkGetSemaphoreCounterValue
import Vulkan.Types.VkFun



type VkGetSemaphoreCounterValueKHR = VkGetSemaphoreCounterValue

vkFunGetSemaphoreCounterValueKHR
  :: VkFun VkGetSemaphoreCounterValueKHR
vkFunGetSemaphoreCounterValueKHR = vkFunGetSemaphoreCounterValue


#else

module Vulkan.Types.Command.VkGetSemaphoreCounterValueKHR where

#endif