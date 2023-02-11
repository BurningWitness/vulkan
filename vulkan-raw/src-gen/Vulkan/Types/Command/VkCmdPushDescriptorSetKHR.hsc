{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_push_descriptor

module Vulkan.Types.Command.VkCmdPushDescriptorSetKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkWriteDescriptorSet
import Vulkan.Types.VkFun



type VkCmdPushDescriptorSetKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineBindPoint -- ^ pipelineBindPoint
       -> VkPipelineLayout -- ^ layout
       -> #{type uint32_t} -- ^ set
       -> #{type uint32_t} -- ^ descriptorWriteCount
       -> Ptr VkWriteDescriptorSet -- ^ pDescriptorWrites
       -> IO ()

vkFunCmdPushDescriptorSetKHR :: VkFun VkCmdPushDescriptorSetKHR
vkFunCmdPushDescriptorSetKHR = VkFun (Ptr ("vkCmdPushDescriptorSetKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdPushDescriptorSetKHR where

#endif