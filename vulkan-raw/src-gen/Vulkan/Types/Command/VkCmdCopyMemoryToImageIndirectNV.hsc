{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Types.Command.VkCmdCopyMemoryToImageIndirectNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.VkFun



type VkCmdCopyMemoryToImageIndirectNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkDeviceAddress -- ^ copyBufferAddress
       -> #{type uint32_t} -- ^ copyCount
       -> #{type uint32_t} -- ^ stride
       -> VkImage -- ^ dstImage
       -> VkImageLayout -- ^ dstImageLayout
       -> Ptr VkImageSubresourceLayers -- ^ pImageSubresources
       -> IO ()

vkFunCmdCopyMemoryToImageIndirectNV :: VkFun VkCmdCopyMemoryToImageIndirectNV
vkFunCmdCopyMemoryToImageIndirectNV = VkFun (Ptr ("vkCmdCopyMemoryToImageIndirectNV\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyMemoryToImageIndirectNV where

#endif