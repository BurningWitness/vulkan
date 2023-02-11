#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering

module Vulkan.Types.Command.VkCmdBeginRenderingKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderingInfo
import Vulkan.Types.Command.VkCmdBeginRendering
import Vulkan.Types.VkFun



type VkCmdBeginRenderingKHR = VkCmdBeginRendering

vkFunCmdBeginRenderingKHR
  :: VkFun VkCmdBeginRenderingKHR
vkFunCmdBeginRenderingKHR = vkFunCmdBeginRendering


#else

module Vulkan.Types.Command.VkCmdBeginRenderingKHR where

#endif