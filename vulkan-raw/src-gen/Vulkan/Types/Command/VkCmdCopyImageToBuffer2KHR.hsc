#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdCopyImageToBuffer2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyImageToBufferInfo2
import Vulkan.Types.Command.VkCmdCopyImageToBuffer2
import Vulkan.Types.VkFun



type VkCmdCopyImageToBuffer2KHR = VkCmdCopyImageToBuffer2

vkFunCmdCopyImageToBuffer2KHR
  :: VkFun VkCmdCopyImageToBuffer2KHR
vkFunCmdCopyImageToBuffer2KHR = vkFunCmdCopyImageToBuffer2


#else

module Vulkan.Types.Command.VkCmdCopyImageToBuffer2KHR where

#endif