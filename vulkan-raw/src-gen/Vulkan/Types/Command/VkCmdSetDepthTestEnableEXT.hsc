#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthTestEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetDepthTestEnable
import Vulkan.Types.VkFun



type VkCmdSetDepthTestEnableEXT = VkCmdSetDepthTestEnable

vkFunCmdSetDepthTestEnableEXT
  :: VkFun VkCmdSetDepthTestEnableEXT
vkFunCmdSetDepthTestEnableEXT = vkFunCmdSetDepthTestEnable


#else

module Vulkan.Types.Command.VkCmdSetDepthTestEnableEXT where

#endif