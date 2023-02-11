#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetStencilOpEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Enum.VkStencilFaceFlags
import Vulkan.Types.Enum.VkStencilOp
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetStencilOp
import Vulkan.Types.VkFun



type VkCmdSetStencilOpEXT = VkCmdSetStencilOp

vkFunCmdSetStencilOpEXT
  :: VkFun VkCmdSetStencilOpEXT
vkFunCmdSetStencilOpEXT = vkFunCmdSetStencilOp


#else

module Vulkan.Types.Command.VkCmdSetStencilOpEXT where

#endif