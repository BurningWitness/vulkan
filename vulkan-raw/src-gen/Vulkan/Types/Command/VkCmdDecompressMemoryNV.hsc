{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_memory_decompression

module Vulkan.Types.Command.VkCmdDecompressMemoryNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDecompressMemoryRegionNV
import Vulkan.Types.VkFun



type VkCmdDecompressMemoryNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ decompressRegionCount
       -> Ptr VkDecompressMemoryRegionNV -- ^ pDecompressMemoryRegions
       -> IO ()

vkFunCmdDecompressMemoryNV :: VkFun VkCmdDecompressMemoryNV
vkFunCmdDecompressMemoryNV = VkFun (Ptr ("vkCmdDecompressMemoryNV\0"##))

#else

module Vulkan.Types.Command.VkCmdDecompressMemoryNV where

#endif