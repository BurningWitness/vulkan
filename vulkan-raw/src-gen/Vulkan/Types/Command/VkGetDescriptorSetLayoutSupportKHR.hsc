#include <vulkan/vulkan.h>

#if VK_KHR_maintenance3

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorSetLayoutCreateInfo
import Vulkan.Types.Struct.VkDescriptorSetLayoutSupport
import Vulkan.Types.Command.VkGetDescriptorSetLayoutSupport
import Vulkan.Types.VkFun



type VkGetDescriptorSetLayoutSupportKHR = VkGetDescriptorSetLayoutSupport

vkFunGetDescriptorSetLayoutSupportKHR
  :: VkFun VkGetDescriptorSetLayoutSupportKHR
vkFunGetDescriptorSetLayoutSupportKHR = vkFunGetDescriptorSetLayoutSupport


#else

module Vulkan.Types.Command.VkGetDescriptorSetLayoutSupportKHR where

#endif