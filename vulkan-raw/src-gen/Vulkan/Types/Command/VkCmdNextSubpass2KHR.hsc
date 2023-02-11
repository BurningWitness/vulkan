#include <vulkan/vulkan.h>

#if VK_KHR_create_renderpass2

module Vulkan.Types.Command.VkCmdNextSubpass2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSubpassBeginInfo
import Vulkan.Types.Struct.VkSubpassEndInfo
import Vulkan.Types.Command.VkCmdNextSubpass2
import Vulkan.Types.VkFun



type VkCmdNextSubpass2KHR = VkCmdNextSubpass2

vkFunCmdNextSubpass2KHR
  :: VkFun VkCmdNextSubpass2KHR
vkFunCmdNextSubpass2KHR = vkFunCmdNextSubpass2


#else

module Vulkan.Types.Command.VkCmdNextSubpass2KHR where

#endif