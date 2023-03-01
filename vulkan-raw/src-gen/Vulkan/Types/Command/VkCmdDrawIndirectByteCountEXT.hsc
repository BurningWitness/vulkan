{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_transform_feedback

module Vulkan.Types.Command.VkCmdDrawIndirectByteCountEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndirectByteCountEXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ instanceCount
       -> #{type uint32_t} -- ^ firstInstance
       -> VkBuffer -- ^ counterBuffer
       -> VkDeviceSize -- ^ counterBufferOffset
       -> #{type uint32_t} -- ^ counterOffset
       -> #{type uint32_t} -- ^ vertexStride
       -> IO ()

vkFunCmdDrawIndirectByteCountEXT :: VkFun VkCmdDrawIndirectByteCountEXT
vkFunCmdDrawIndirectByteCountEXT = VkFun (Ptr ("vkCmdDrawIndirectByteCountEXT\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawIndirectByteCountEXT where

#endif