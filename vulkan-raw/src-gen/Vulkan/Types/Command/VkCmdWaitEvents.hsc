{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdWaitEvents where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkBufferMemoryBarrier
import Vulkan.Types.Struct.VkImageMemoryBarrier
import Vulkan.Types.Struct.VkMemoryBarrier
import Vulkan.Types.VkFun



type VkCmdWaitEvents =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ eventCount
       -> Ptr VkEvent -- ^ pEvents
       -> VkPipelineStageFlags -- ^ srcStageMask
       -> VkPipelineStageFlags -- ^ dstStageMask
       -> #{type uint32_t} -- ^ memoryBarrierCount
       -> Ptr VkMemoryBarrier -- ^ pMemoryBarriers
       -> #{type uint32_t} -- ^ bufferMemoryBarrierCount
       -> Ptr VkBufferMemoryBarrier -- ^ pBufferMemoryBarriers
       -> #{type uint32_t} -- ^ imageMemoryBarrierCount
       -> Ptr VkImageMemoryBarrier -- ^ pImageMemoryBarriers
       -> IO ()

vkFunCmdWaitEvents :: VkFun VkCmdWaitEvents
vkFunCmdWaitEvents = VkFun (Ptr ("vkCmdWaitEvents\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdWaitEvents"
  vkCmdWaitEvents
    :: VkCmdWaitEvents

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdWaitEvents"
  vkCmdWaitEventsUnsafe
    :: VkCmdWaitEvents