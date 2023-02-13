{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_extended_dynamic_state

module Vulkan.Types.Command.VkCmdBindVertexBuffers2EXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdBindVertexBuffers2EXT =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstBinding
       -> #{type uint32_t} -- ^ bindingCount
       -> Ptr VkBuffer -- ^ pBuffers
       -> Ptr VkDeviceSize -- ^ pOffsets
       -> Ptr VkDeviceSize -- ^ pSizes
       -> Ptr VkDeviceSize -- ^ pStrides
       -> IO ()

vkFunCmdBindVertexBuffers2EXT :: VkFun VkCmdBindVertexBuffers2EXT
vkFunCmdBindVertexBuffers2EXT = VkFun (Ptr ("vkCmdBindVertexBuffers2EXT\0"##))

#else

module Vulkan.Types.Command.VkCmdBindVertexBuffers2EXT where

#endif