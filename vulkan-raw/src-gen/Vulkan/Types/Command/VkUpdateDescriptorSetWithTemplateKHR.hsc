{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_descriptor_update_template

module Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplateKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkUpdateDescriptorSetWithTemplateKHR =
          VkDevice -- ^ device
       -> VkDescriptorSet -- ^ descriptorSet
       -> VkDescriptorUpdateTemplate -- ^ descriptorUpdateTemplate
       -> Ptr () -- ^ pData
       -> IO ()

vkFunUpdateDescriptorSetWithTemplateKHR :: VkFun VkUpdateDescriptorSetWithTemplateKHR
vkFunUpdateDescriptorSetWithTemplateKHR = VkFun (Ptr ("vkUpdateDescriptorSetWithTemplateKHR\0"##))

#else

module Vulkan.Types.Command.VkUpdateDescriptorSetWithTemplateKHR where

#endif