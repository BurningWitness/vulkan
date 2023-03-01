{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndexedIndirectCountKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndexedIndirectCountKHR :: VkFun VkCmdDrawIndexedIndirectCountKHR
vkFunCmdDrawIndexedIndirectCountKHR = VkFun (Ptr ("vkCmdDrawIndexedIndirectCountKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountKHR where

#endif