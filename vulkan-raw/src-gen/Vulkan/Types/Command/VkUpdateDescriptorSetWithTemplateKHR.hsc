#include <vulkan/vulkan.h>

#if VK_KHR_descriptor_update_template

module Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplateKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplate
import Vulkan.Types.VkFun



type VkUpdateDescriptorSetWithTemplateKHR = VkUpdateDescriptorSetWithTemplate

vkFunUpdateDescriptorSetWithTemplateKHR
  :: VkFun VkUpdateDescriptorSetWithTemplateKHR
vkFunUpdateDescriptorSetWithTemplateKHR = vkFunUpdateDescriptorSetWithTemplate


#else

module Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplateKHR where

#endif