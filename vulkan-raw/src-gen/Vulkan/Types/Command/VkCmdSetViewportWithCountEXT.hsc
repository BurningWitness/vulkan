#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdSetViewportWithCountEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkViewport
import Vulkan.Types.Command.VkCmdSetViewportWithCount
import Vulkan.Types.VkFun



type VkCmdSetViewportWithCountEXT = VkCmdSetViewportWithCount

vkFunCmdSetViewportWithCountEXT
  :: VkFun VkCmdSetViewportWithCountEXT
vkFunCmdSetViewportWithCountEXT = vkFunCmdSetViewportWithCount


#else

module Vulkan.Types.Command.VkCmdSetViewportWithCountEXT where

#endif