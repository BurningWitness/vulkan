{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkCmdBindDescriptorBufferEmbeddedSamplersEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineBindPoint
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindDescriptorBufferEmbeddedSamplersEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineBindPoint -- ^ pipelineBindPoint
       -> VkPipelineLayout -- ^ layout
       -> #{type uint32_t} -- ^ set
       -> IO ()

vkFunCmdBindDescriptorBufferEmbeddedSamplersEXT :: VkFun VkCmdBindDescriptorBufferEmbeddedSamplersEXT
vkFunCmdBindDescriptorBufferEmbeddedSamplersEXT = VkFun (Ptr ("vkCmdBindDescriptorBufferEmbeddedSamplersEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBindDescriptorBufferEmbeddedSamplersEXT where

#endif