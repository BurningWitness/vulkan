#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkDestroyPrivateDataSlotEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Command.VkDestroyPrivateDataSlot
import Vulkan.Types.VkFun



type VkDestroyPrivateDataSlotEXT = VkDestroyPrivateDataSlot

vkFunDestroyPrivateDataSlotEXT
  :: VkFun VkDestroyPrivateDataSlotEXT
vkFunDestroyPrivateDataSlotEXT = vkFunDestroyPrivateDataSlot


#else

module Vulkan.Types.Command.VkDestroyPrivateDataSlotEXT where

#endif