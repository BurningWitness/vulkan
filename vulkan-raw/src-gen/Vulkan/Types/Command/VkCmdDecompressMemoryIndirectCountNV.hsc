{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_memory_decompression

module Vulkan.Types.Command.VkCmdDecompressMemoryIndirectCountNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDecompressMemoryIndirectCountNV =
          VkCommandBuffer -- ^ commandBuffer
       -> VkDeviceAddress -- ^ indirectCommandsAddress
       -> VkDeviceAddress -- ^ indirectCommandsCountAddress
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDecompressMemoryIndirectCountNV :: VkFun VkCmdDecompressMemoryIndirectCountNV
vkFunCmdDecompressMemoryIndirectCountNV = VkFun (Ptr ("vkCmdDecompressMemoryIndirectCountNV\0"##))

#else

module Vulkan.Types.Command.VkCmdDecompressMemoryIndirectCountNV where

#endif