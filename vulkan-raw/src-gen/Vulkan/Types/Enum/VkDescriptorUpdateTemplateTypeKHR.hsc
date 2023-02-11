{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorUpdateTemplateTypeKHR where

import Data.Int
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateType



#if VK_KHR_descriptor_update_template
type VkDescriptorUpdateTemplateTypeKHR = VkDescriptorUpdateTemplateType
#endif