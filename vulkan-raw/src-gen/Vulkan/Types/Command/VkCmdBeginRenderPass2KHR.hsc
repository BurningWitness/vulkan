#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCmdBeginRenderPass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRenderPassBeginInfo
import Vulkan.Types.Struct.VkSubpassBeginInfo
import Vulkan.Types.Command.VkCmdBeginRenderPass2
import Vulkan.Types.VkFun



type VkCmdBeginRenderPass2KHR = VkCmdBeginRenderPass2

vkFunCmdBeginRenderPass2KHR
  :: VkFun VkCmdBeginRenderPass2KHR
vkFunCmdBeginRenderPass2KHR = vkFunCmdBeginRenderPass2


#else

module Vulkan.Types.Command.VkCmdBeginRenderPass2KHR where

#endif