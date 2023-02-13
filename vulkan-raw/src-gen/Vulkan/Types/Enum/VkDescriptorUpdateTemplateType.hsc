{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorUpdateTemplateType where

import Data.Int



#if VK_VERSION_1_1
type VkDescriptorUpdateTemplateType = #{type int}
#endif

#if VK_VERSION_1_1
-- | Create descriptor update template for descriptor set updates
pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET = 0
#endif

#if (VK_KHR_descriptor_update_template && VK_KHR_push_descriptor) || (VK_KHR_push_descriptor && VK_KHR_descriptor_update_template)
-- | Create descriptor update template for pushed descriptor updates
pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR = 1
#endif

#if VK_VERSION_1_1
pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR = 0
#endif