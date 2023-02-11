#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state2

module Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnableEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnable
import Vulkan.Types.VkFun



type VkCmdSetRasterizerDiscardEnableEXT = VkCmdSetRasterizerDiscardEnable

vkFunCmdSetRasterizerDiscardEnableEXT
  :: VkFun VkCmdSetRasterizerDiscardEnableEXT
vkFunCmdSetRasterizerDiscardEnableEXT = vkFunCmdSetRasterizerDiscardEnable


#else

module Vulkan.Types.Command.VkCmdSetRasterizerDiscardEnableEXT where

#endif