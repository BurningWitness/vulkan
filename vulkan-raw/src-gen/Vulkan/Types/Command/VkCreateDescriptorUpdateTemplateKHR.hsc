{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

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
import Vulkan.Types.VkFun



type VkCreateDescriptorUpdateTemplateKHR =
          VkDevice -- ^ device
       -> Ptr VkDescriptorUpdateTemplateCreateInfo -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkDescriptorUpdateTemplate -- ^ pDescriptorUpdateTemplate
       -> IO VkResult

vkFunCreateDescriptorUpdateTemplateKHR :: VkFun VkCreateDescriptorUpdateTemplateKHR
vkFunCreateDescriptorUpdateTemplateKHR = VkFun (Ptr ("vkCreateDescriptorUpdateTemplateKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateDescriptorUpdateTemplateKHR where

#endif