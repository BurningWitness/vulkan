#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdResolveImage2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkResolveImageInfo2
import Vulkan.Types.Command.VkCmdResolveImage2
import Vulkan.Types.VkFun



type VkCmdResolveImage2KHR = VkCmdResolveImage2

vkFunCmdResolveImage2KHR
  :: VkFun VkCmdResolveImage2KHR
vkFunCmdResolveImage2KHR = vkFunCmdResolveImage2


#else

module Vulkan.Types.Command.VkCmdResolveImage2KHR where

#endif