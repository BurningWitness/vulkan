{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdPipelineBarrier where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkDependencyFlags
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferMemoryBarrier
import Vulkan.Types.Struct.VkImageMemoryBarrier
import Vulkan.Types.Struct.VkMemoryBarrier
import Vulkan.Types.VkFun



type VkCmdPipelineBarrier =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineStageFlags -- ^ srcStageMask
       -> VkPipelineStageFlags -- ^ dstStageMask
       -> VkDependencyFlags -- ^ dependencyFlags
       -> #{type uint32_t} -- ^ memoryBarrierCount
       -> Ptr VkMemoryBarrier -- ^ pMemoryBarriers
       -> #{type uint32_t} -- ^ bufferMemoryBarrierCount
       -> Ptr VkBufferMemoryBarrier -- ^ pBufferMemoryBarriers
       -> #{type uint32_t} -- ^ imageMemoryBarrierCount
       -> Ptr VkImageMemoryBarrier -- ^ pImageMemoryBarriers
       -> IO ()

vkFunCmdPipelineBarrier :: VkFun VkCmdPipelineBarrier
vkFunCmdPipelineBarrier = VkFun (Ptr ("vkCmdPipelineBarrier\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdPipelineBarrier"
  vkCmdPipelineBarrier
    :: VkCmdPipelineBarrier

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdPipelineBarrier"
  vkCmdPipelineBarrierUnsafe
    :: VkCmdPipelineBarrier