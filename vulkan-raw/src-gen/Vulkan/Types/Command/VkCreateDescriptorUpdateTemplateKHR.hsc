#include <vulkan/vulkan.h>

#if VK_KHR_descriptor_update_template

module Vulkan.Types.Command.VkCreateDescriptorUpdateTemplateKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfo
import Vulkan.Types.Command.VkCreateDescriptorUpdateTemplate
import Vulkan.Types.VkFun



type VkCreateDescriptorUpdateTemplateKHR = VkCreateDescriptorUpdateTemplate

vkFunCreateDescriptorUpdateTemplateKHR
  :: VkFun VkCreateDescriptorUpdateTemplateKHR
vkFunCreateDescriptorUpdateTemplateKHR = vkFunCreateDescriptorUpdateTemplate


#else

module Vulkan.Types.Command.VkCreateDescriptorUpdateTemplateKHR where

#endif