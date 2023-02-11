#include <vulkan/vulkan.h>

#if VK_AMD_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndirectCountAMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkCmdDrawIndirectCount
import Vulkan.Types.VkFun



type VkCmdDrawIndirectCountAMD = VkCmdDrawIndirectCount

vkFunCmdDrawIndirectCountAMD
  :: VkFun VkCmdDrawIndirectCountAMD
vkFunCmdDrawIndirectCountAMD = vkFunCmdDrawIndirectCount


#else

module Vulkan.Types.Command.VkCmdDrawIndirectCountAMD where

#endif