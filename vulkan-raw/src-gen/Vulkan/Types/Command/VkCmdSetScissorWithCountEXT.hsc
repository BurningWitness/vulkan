#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetScissorWithCountEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.Command.VkCmdSetScissorWithCount
import Vulkan.Types.VkFun



type VkCmdSetScissorWithCountEXT = VkCmdSetScissorWithCount

vkFunCmdSetScissorWithCountEXT
  :: VkFun VkCmdSetScissorWithCountEXT
vkFunCmdSetScissorWithCountEXT = vkFunCmdSetScissorWithCount


#else

module Vulkan.Types.Command.VkCmdSetScissorWithCountEXT where

#endif