{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_copy_memory_indirect

module Vulkan.Types.Command.VkCmdCopyMemoryIndirectNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdCopyMemoryIndirectNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkDeviceAddress -- ^ copyBufferAddress
       -> #{type uint32_t} -- ^ copyCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdCopyMemoryIndirectNV :: VkFun VkCmdCopyMemoryIndirectNV
vkFunCmdCopyMemoryIndirectNV = VkFun (Ptr ("vkCmdCopyMemoryIndirectNV\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyMemoryIndirectNV where

#endif