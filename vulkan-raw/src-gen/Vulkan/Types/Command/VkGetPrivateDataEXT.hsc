#include <vulkan/vulkan.h>

#if VK_EXT_private_data

module Vulkan.Types.Command.VkGetPrivateDataEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkGetPrivateData
import Vulkan.Types.VkFun



type VkGetPrivateDataEXT = VkGetPrivateData

vkFunGetPrivateDataEXT
  :: VkFun VkGetPrivateDataEXT
vkFunGetPrivateDataEXT = vkFunGetPrivateData


#else

module Vulkan.Types.Command.VkGetPrivateDataEXT where

#endif