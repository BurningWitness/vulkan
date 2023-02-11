{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_descriptor_update_template

module Vulkan.Ext.VK_KHR_descriptor_update_template
  ( pattern VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_SPEC_VERSION
  , pattern VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_CREATE_INFO_KHR
  , pattern VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR
  , VkCreateDescriptorUpdateTemplateKHR
  , vkFunCreateDescriptorUpdateTemplateKHR
  , VkDestroyDescriptorUpdateTemplateKHR
  , vkFunDestroyDescriptorUpdateTemplateKHR
  , VkUpdateDescriptorSetWithTemplateKHR
  , vkFunUpdateDescriptorSetWithTemplateKHR
  , VkDescriptorUpdateTemplateKHR
  , VkDescriptorUpdateTemplateCreateFlagsKHR
  , VkDescriptorUpdateTemplateTypeKHR
  , VkDescriptorUpdateTemplateEntryKHR
  , VkDescriptorUpdateTemplateCreateInfoKHR
  , pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_DESCRIPTOR_SET_KHR
#if VK_KHR_push_descriptor
  , VkCmdPushDescriptorSetWithTemplateKHR
  , vkFunCmdPushDescriptorSetWithTemplateKHR
  , pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR
#endif
#if VK_EXT_debug_report
  , pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDebugReportObjectTypeEXT
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateCreateFlagsKHR
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateType
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateTypeKHR
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorUpdateTemplateCreateInfoKHR
import Vulkan.Types.Struct.VkDescriptorUpdateTemplateEntryKHR
import Vulkan.Types.Command.VkCmdPushDescriptorSetWithTemplateKHR
import Vulkan.Types.Command.VkCreateDescriptorUpdateTemplateKHR
import Vulkan.Types.Command.VkDestroyDescriptorUpdateTemplateKHR
import Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplateKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_SPEC_VERSION = 1

pattern VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME :: CString
pattern VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DESCRIPTOR_UPDATE_TEMPLATE_EXTENSION_NAME = Ptr ("VK_KHR_descriptor_update_template\0"##)

#else

module Vulkan.Ext.VK_KHR_descriptor_update_template where

#endif