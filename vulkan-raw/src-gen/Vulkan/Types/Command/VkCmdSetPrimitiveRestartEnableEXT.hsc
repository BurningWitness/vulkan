#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnable
import Vulkan.Types.VkFun



type VkCmdSetPrimitiveRestartEnableEXT = VkCmdSetPrimitiveRestartEnable

vkFunCmdSetPrimitiveRestartEnableEXT
  :: VkFun VkCmdSetPrimitiveRestartEnableEXT
vkFunCmdSetPrimitiveRestartEnableEXT = vkFunCmdSetPrimitiveRestartEnable


#else

module Vulkan.Types.Command.VkCmdSetPrimitiveRestartEnableEXT where

#endif