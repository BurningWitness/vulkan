#include <vulkan/vulkan.h>

#if VK_KHR_descriptor_update_template

module Vulkan.Types.Command.VkDestroyDescriptorUpdateTemplateKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Command.VkDestroyDescriptorUpdateTemplate
import Vulkan.Types.VkFun



type VkDestroyDescriptorUpdateTemplateKHR = VkDestroyDescriptorUpdateTemplate

vkFunDestroyDescriptorUpdateTemplateKHR
  :: VkFun VkDestroyDescriptorUpdateTemplateKHR
vkFunDestroyDescriptorUpdateTemplateKHR = vkFunDestroyDescriptorUpdateTemplate


#else

module Vulkan.Types.Command.VkDestroyDescriptorUpdateTemplateKHR where

#endif