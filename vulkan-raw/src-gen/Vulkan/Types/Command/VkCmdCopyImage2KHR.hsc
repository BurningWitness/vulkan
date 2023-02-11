#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdCopyImage2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyImageInfo2
import Vulkan.Types.Command.VkCmdCopyImage2
import Vulkan.Types.VkFun



type VkCmdCopyImage2KHR = VkCmdCopyImage2

vkFunCmdCopyImage2KHR
  :: VkFun VkCmdCopyImage2KHR
vkFunCmdCopyImage2KHR = vkFunCmdCopyImage2


#else

module Vulkan.Types.Command.VkCmdCopyImage2KHR where

#endif