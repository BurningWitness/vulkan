#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCmdEndRenderPass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubpassEndInfo
import Vulkan.Types.Command.VkCmdEndRenderPass2
import Vulkan.Types.VkFun



type VkCmdEndRenderPass2KHR = VkCmdEndRenderPass2

vkFunCmdEndRenderPass2KHR
  :: VkFun VkCmdEndRenderPass2KHR
vkFunCmdEndRenderPass2KHR = vkFunCmdEndRenderPass2


#else

module Vulkan.Types.Command.VkCmdEndRenderPass2KHR where

#endif