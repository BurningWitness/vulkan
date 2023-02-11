{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_descriptor_update_template && VK_KHR_push_descriptor) || (VK_KHR_push_descriptor && VK_KHR_descriptor_update_template)

module Vulkan.Types.Command.VkCmdPushDescriptorSetWithTemplateKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdPushDescriptorSetWithTemplateKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkDescriptorUpdateTemplate -- ^ descriptorUpdateTemplate
       -> VkPipelineLayout -- ^ layout
       -> #{type uint32_t} -- ^ set
       -> Ptr () -- ^ pData
       -> IO ()

vkFunCmdPushDescriptorSetWithTemplateKHR :: VkFun VkCmdPushDescriptorSetWithTemplateKHR
vkFunCmdPushDescriptorSetWithTemplateKHR = VkFun (Ptr ("vkCmdPushDescriptorSetWithTemplateKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdPushDescriptorSetWithTemplateKHR where

#endif