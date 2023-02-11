{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_descriptor_buffer

module Vulkan.Types.Command.VkCmdBindDescriptorBuffersEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDescriptorBufferBindingInfoEXT
import Vulkan.Types.VkFun



type VkCmdBindDescriptorBuffersEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ bufferCount
       -> Ptr VkDescriptorBufferBindingInfoEXT -- ^ pBindingInfos
       -> IO ()

vkFunCmdBindDescriptorBuffersEXT :: VkFun VkCmdBindDescriptorBuffersEXT
vkFunCmdBindDescriptorBuffersEXT = VkFun (Ptr ("vkCmdBindDescriptorBuffersEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBindDescriptorBuffersEXT where

#endif