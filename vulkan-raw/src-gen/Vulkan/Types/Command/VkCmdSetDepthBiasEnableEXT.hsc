#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetDepthBiasEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetDepthBiasEnable
import Vulkan.Types.VkFun



type VkCmdSetDepthBiasEnableEXT = VkCmdSetDepthBiasEnable

vkFunCmdSetDepthBiasEnableEXT
  :: VkFun VkCmdSetDepthBiasEnableEXT
vkFunCmdSetDepthBiasEnableEXT = vkFunCmdSetDepthBiasEnable


#else

module Vulkan.Types.Command.VkCmdSetDepthBiasEnableEXT where

#endif