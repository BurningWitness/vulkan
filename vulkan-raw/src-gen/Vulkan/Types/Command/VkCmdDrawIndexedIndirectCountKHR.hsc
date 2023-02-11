#include <vulkan/vulkan.h>

#if VK_KHR_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdDrawIndexedIndirectCount
import Vulkan.Types.VkFun



type VkCmdDrawIndexedIndirectCountKHR = VkCmdDrawIndexedIndirectCount

vkFunCmdDrawIndexedIndirectCountKHR
  :: VkFun VkCmdDrawIndexedIndirectCountKHR
vkFunCmdDrawIndexedIndirectCountKHR = vkFunCmdDrawIndexedIndirectCount


#else

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountKHR where

#endif