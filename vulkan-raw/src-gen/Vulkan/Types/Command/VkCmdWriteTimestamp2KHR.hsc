{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdWriteTimestamp2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteTimestamp2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineStageFlags2 -- ^ stage
       -> VkQueryPool -- ^ queryPool
       -> #{type uint32_t} -- ^ query
       -> IO ()

vkFunCmdWriteTimestamp2KHR :: VkFun VkCmdWriteTimestamp2KHR
vkFunCmdWriteTimestamp2KHR = VkFun (Ptr ("vkCmdWriteTimestamp2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdWriteTimestamp2KHR where

#endif