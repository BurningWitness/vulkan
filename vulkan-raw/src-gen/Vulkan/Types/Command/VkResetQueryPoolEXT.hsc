#include <vulkan/vulkan.h>

#if VK_EXT_host_query_reset

module Vulkan.Types.Command.VkResetQueryPoolEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkResetQueryPool
import Vulkan.Types.VkFun



type VkResetQueryPoolEXT = VkResetQueryPool

vkFunResetQueryPoolEXT
  :: VkFun VkResetQueryPoolEXT
vkFunResetQueryPoolEXT = vkFunResetQueryPool


#else

module Vulkan.Types.Command.VkResetQueryPoolEXT where

#endif