{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_push_descriptor

module Vulkan.Ext.VK_KHR_push_descriptor
  ( pattern VK_KHR_PUSH_DESCRIPTOR_SPEC_VERSION
  , pattern VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PUSH_DESCRIPTOR_PROPERTIES_KHR
  , pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR
  , VkCmdPushDescriptorSetKHR
  , vkFunCmdPushDescriptorSetKHR
  , VkPhysicalDevicePushDescriptorPropertiesKHR (..)
#if VK_VERSION_1_1
  , VkCmdPushDescriptorSetWithTemplateKHR
  , vkFunCmdPushDescriptorSetWithTemplateKHR
  , pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR
#endif
#if VK_KHR_descriptor_update_template
  , VkCmdPushDescriptorSetWithTemplateKHR
  , vkFunCmdPushDescriptorSetWithTemplateKHR
  , pattern VK_DESCRIPTOR_UPDATE_TEMPLATE_TYPE_PUSH_DESCRIPTORS_KHR
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlagBits
import Vulkan.Types.Enum.VkDescriptorUpdateTemplateType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePushDescriptorPropertiesKHR
import Vulkan.Types.Command.VkCmdPushDescriptorSetKHR
import Vulkan.Types.Command.VkCmdPushDescriptorSetWithTemplateKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PUSH_DESCRIPTOR_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PUSH_DESCRIPTOR_SPEC_VERSION = 2

pattern VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME :: CString
pattern VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PUSH_DESCRIPTOR_EXTENSION_NAME = Ptr ("VK_KHR_push_descriptor\0"##)

#else

module Vulkan.Ext.VK_KHR_push_descriptor where

#endif