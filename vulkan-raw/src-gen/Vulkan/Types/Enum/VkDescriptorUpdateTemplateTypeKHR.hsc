{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorUpdateTemplateTypeKHR where

import Data.Int



#if VK_KHR_descriptor_update_template
type VkDescriptorUpdateTemplateTypeKHR = #{type int}
#endif