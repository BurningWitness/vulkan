#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Command.VkCmdEndRenderingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdEndRendering
import Vulkan.Types.VkFun



type VkCmdEndRenderingKHR = VkCmdEndRendering

vkFunCmdEndRenderingKHR
  :: VkFun VkCmdEndRenderingKHR
vkFunCmdEndRenderingKHR = vkFunCmdEndRendering


#else

module Vulkan.Types.Command.VkCmdEndRenderingKHR where

#endif