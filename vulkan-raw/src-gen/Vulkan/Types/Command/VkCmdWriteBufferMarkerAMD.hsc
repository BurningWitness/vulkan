{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_AMD_buffer_marker

module Vulkan.Types.Command.VkCmdWriteBufferMarkerAMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineStageFlagBits
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteBufferMarkerAMD =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineStageFlagBits -- ^ pipelineStage
       -> VkBuffer -- ^ dstBuffer
       -> VkDeviceSize -- ^ dstOffset
       -> #{type uint32_t} -- ^ marker
       -> IO ()

vkFunCmdWriteBufferMarkerAMD :: VkFun VkCmdWriteBufferMarkerAMD
vkFunCmdWriteBufferMarkerAMD = VkFun (Ptr ("vkCmdWriteBufferMarkerAMD\0"##))

#else

module Vulkan.Types.Command.VkCmdWriteBufferMarkerAMD where

#endif