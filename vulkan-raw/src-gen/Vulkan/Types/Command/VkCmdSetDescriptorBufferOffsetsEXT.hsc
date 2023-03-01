{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkCmdSetDescriptorBufferOffsetsEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdSetDescriptorBufferOffsetsEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineBindPoint -- ^ pipelineBindPoint
       -> VkPipelineLayout -- ^ layout
       -> #{type uint32_t} -- ^ firstSet
       -> #{type uint32_t} -- ^ setCount
       -> Ptr #{type uint32_t} -- ^ pBufferIndices
       -> Ptr VkDeviceSize -- ^ pOffsets
       -> IO ()

vkFunCmdSetDescriptorBufferOffsetsEXT :: VkFun VkCmdSetDescriptorBufferOffsetsEXT
vkFunCmdSetDescriptorBufferOffsetsEXT = VkFun (Ptr ("vkCmdSetDescriptorBufferOffsetsEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdSetDescriptorBufferOffsetsEXT where

#endif