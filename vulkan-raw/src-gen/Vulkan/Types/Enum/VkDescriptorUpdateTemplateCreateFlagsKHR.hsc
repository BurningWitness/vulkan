{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorUpdateTemplateCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_descriptor_update_template
type VkDescriptorUpdateTemplateCreateFlagsKHR = VkFlags
#endif