#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetCullModeEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCullModeFlags
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetCullMode
import Vulkan.Types.VkFun



type VkCmdSetCullModeEXT = VkCmdSetCullMode

vkFunCmdSetCullModeEXT
  :: VkFun VkCmdSetCullModeEXT
vkFunCmdSetCullModeEXT = vkFunCmdSetCullMode


#else

module Vulkan.Types.Command.VkCmdSetCullModeEXT where

#endif