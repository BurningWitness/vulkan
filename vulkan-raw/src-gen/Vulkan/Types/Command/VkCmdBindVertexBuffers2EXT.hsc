#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdBindVertexBuffers2EXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdBindVertexBuffers2
import Vulkan.Types.VkFun



type VkCmdBindVertexBuffers2EXT = VkCmdBindVertexBuffers2

vkFunCmdBindVertexBuffers2EXT
  :: VkFun VkCmdBindVertexBuffers2EXT
vkFunCmdBindVertexBuffers2EXT = vkFunCmdBindVertexBuffers2


#else

module Vulkan.Types.Command.VkCmdBindVertexBuffers2EXT where

#endif