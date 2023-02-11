#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCreateRenderPass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkRenderPassCreateInfo2
import Vulkan.Types.Command.VkCreateRenderPass2
import Vulkan.Types.VkFun



type VkCreateRenderPass2KHR = VkCreateRenderPass2

vkFunCreateRenderPass2KHR
  :: VkFun VkCreateRenderPass2KHR
vkFunCreateRenderPass2KHR = vkFunCreateRenderPass2


#else

module Vulkan.Types.Command.VkCreateRenderPass2KHR where

#endif