#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkCreatePrivateDataSlotEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkPrivateDataSlotCreateInfo
import Vulkan.Types.Command.VkCreatePrivateDataSlot
import Vulkan.Types.VkFun



type VkCreatePrivateDataSlotEXT = VkCreatePrivateDataSlot

vkFunCreatePrivateDataSlotEXT
  :: VkFun VkCreatePrivateDataSlotEXT
vkFunCreatePrivateDataSlotEXT = vkFunCreatePrivateDataSlot


#else

module Vulkan.Types.Command.VkCreatePrivateDataSlotEXT where

#endif