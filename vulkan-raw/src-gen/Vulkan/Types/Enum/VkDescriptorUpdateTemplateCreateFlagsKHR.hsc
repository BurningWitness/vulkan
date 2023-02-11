{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorUpdateTemplateCreateFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateCreateFlags



#if VK_KHR_descriptor_update_template
type VkDescriptorUpdateTemplateCreateFlagsKHR = VkDescriptorUpdateTemplateCreateFlags
#endif