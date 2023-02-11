#include <vulkan/vulkan.h>

#if VK_KHR_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndirectCountKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdDrawIndirectCount
import Vulkan.Types.VkFun



type VkCmdDrawIndirectCountKHR = VkCmdDrawIndirectCount

vkFunCmdDrawIndirectCountKHR
  :: VkFun VkCmdDrawIndirectCountKHR
vkFunCmdDrawIndirectCountKHR = vkFunCmdDrawIndirectCount


#else

module Vulkan.Types.Command.VkCmdDrawIndirectCountKHR where

#endif