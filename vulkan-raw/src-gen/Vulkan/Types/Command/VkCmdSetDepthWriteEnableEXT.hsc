#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthWriteEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetDepthWriteEnable
import Vulkan.Types.VkFun



type VkCmdSetDepthWriteEnableEXT = VkCmdSetDepthWriteEnable

vkFunCmdSetDepthWriteEnableEXT
  :: VkFun VkCmdSetDepthWriteEnableEXT
vkFunCmdSetDepthWriteEnableEXT = vkFunCmdSetDepthWriteEnable


#else

module Vulkan.Types.Command.VkCmdSetDepthWriteEnableEXT where

#endif