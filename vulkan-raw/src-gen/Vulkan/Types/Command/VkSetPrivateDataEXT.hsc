#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkSetPrivateDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkSetPrivateData
import Vulkan.Types.VkFun



type VkSetPrivateDataEXT = VkSetPrivateData

vkFunSetPrivateDataEXT
  :: VkFun VkSetPrivateDataEXT
vkFunSetPrivateDataEXT = vkFunSetPrivateData


#else

module Vulkan.Types.Command.VkSetPrivateDataEXT where

#endif