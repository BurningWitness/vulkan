#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetStencilTestEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetStencilTestEnable
import Vulkan.Types.VkFun



type VkCmdSetStencilTestEnableEXT = VkCmdSetStencilTestEnable

vkFunCmdSetStencilTestEnableEXT
  :: VkFun VkCmdSetStencilTestEnableEXT
vkFunCmdSetStencilTestEnableEXT = vkFunCmdSetStencilTestEnable


#else

module Vulkan.Types.Command.VkCmdSetStencilTestEnableEXT where

#endif