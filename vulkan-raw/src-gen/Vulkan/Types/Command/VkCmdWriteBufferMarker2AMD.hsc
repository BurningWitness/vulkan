{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2 && VK_AMD_buffer_marker

module Vulkan.Types.Command.VkCmdWriteBufferMarker2AMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdWriteBufferMarker2AMD =
          VkCommandBuffer -- ^ commandBuffer
       -> VkPipelineStageFlags2 -- ^ stage
       -> VkBuffer -- ^ dstBuffer
       -> VkDeviceSize -- ^ dstOffset
       -> #{type uint32_t} -- ^ marker
       -> IO ()

vkFunCmdWriteBufferMarker2AMD :: VkFun VkCmdWriteBufferMarker2AMD
vkFunCmdWriteBufferMarker2AMD = VkFun (Ptr ("vkCmdWriteBufferMarker2AMD\0"##))

#else

module Vulkan.Types.Command.VkCmdWriteBufferMarker2AMD where

#endif