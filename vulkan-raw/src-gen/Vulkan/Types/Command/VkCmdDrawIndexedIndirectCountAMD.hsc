{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_AMD_draw_indirect_count

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountAMD where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdDrawIndexedIndirectCountAMD =
          VkCommandBuffer -- ^ commandBuffer
       -> VkBuffer -- ^ buffer
       -> VkDeviceSize -- ^ offset
       -> VkBuffer -- ^ countBuffer
       -> VkDeviceSize -- ^ countBufferOffset
       -> #{type uint32_t} -- ^ maxDrawCount
       -> #{type uint32_t} -- ^ stride
       -> IO ()

vkFunCmdDrawIndexedIndirectCountAMD :: VkFun VkCmdDrawIndexedIndirectCountAMD
vkFunCmdDrawIndexedIndirectCountAMD = VkFun (Ptr ("vkCmdDrawIndexedIndirectCountAMD\0"##))

#else

module Vulkan.Types.Command.VkCmdDrawIndexedIndirectCountAMD where

#endif