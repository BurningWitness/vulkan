#include <vulkan/vulkan.h>

#if VK_AMD_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountAMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdDrawIndexedIndirectCount
import Vulkan.Types.VkFun



type VkCmdDrawIndexedIndirectCountAMD = VkCmdDrawIndexedIndirectCount

vkFunCmdDrawIndexedIndirectCountAMD
  :: VkFun VkCmdDrawIndexedIndirectCountAMD
vkFunCmdDrawIndexedIndirectCountAMD = vkFunCmdDrawIndexedIndirectCount


#else

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountAMD where

#endif