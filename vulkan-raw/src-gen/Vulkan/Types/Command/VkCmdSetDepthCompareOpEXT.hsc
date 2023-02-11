#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetDepthCompareOpEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkCompareOp
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdSetDepthCompareOp
import Vulkan.Types.VkFun



type VkCmdSetDepthCompareOpEXT = VkCmdSetDepthCompareOp

vkFunCmdSetDepthCompareOpEXT
  :: VkFun VkCmdSetDepthCompareOpEXT
vkFunCmdSetDepthCompareOpEXT = vkFunCmdSetDepthCompareOp


#else

module Vulkan.Types.Command.VkCmdSetDepthCompareOpEXT where

#endif