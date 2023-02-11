#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetPrimitiveTopologyEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPrimitiveTopology
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetPrimitiveTopology
import Vulkan.Types.VkFun



type VkCmdSetPrimitiveTopologyEXT = VkCmdSetPrimitiveTopology

vkFunCmdSetPrimitiveTopologyEXT
  :: VkFun VkCmdSetPrimitiveTopologyEXT
vkFunCmdSetPrimitiveTopologyEXT = vkFunCmdSetPrimitiveTopology


#else

module Vulkan.Types.Command.VkCmdSetPrimitiveTopologyEXT where

#endif