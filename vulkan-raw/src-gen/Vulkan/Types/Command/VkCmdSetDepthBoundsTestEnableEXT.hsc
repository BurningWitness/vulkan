#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnable
import Vulkan.Types.VkFun



type VkCmdSetDepthBoundsTestEnableEXT = VkCmdSetDepthBoundsTestEnable

vkFunCmdSetDepthBoundsTestEnableEXT
  :: VkFun VkCmdSetDepthBoundsTestEnableEXT
vkFunCmdSetDepthBoundsTestEnableEXT = vkFunCmdSetDepthBoundsTestEnable


#else

module Vulkan.Types.Command.VkCmdSetDepthBoundsTestEnableEXT where

#endif