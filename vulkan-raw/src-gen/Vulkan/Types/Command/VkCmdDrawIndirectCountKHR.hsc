{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndirectCountKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndirectCountKHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndirectCountKHR :: VkFun VkCmdDrawIndirectCountKHR
vkFunCmdDrawIndirectCountKHR = VkFun (Ptr ("vkCmdDrawIndirectCountKHR\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawIndirectCountKHR where

#endif