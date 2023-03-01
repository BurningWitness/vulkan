{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_NV_scissor_exclusive

module Vulkan.Types.Command.VkCmdSetExclusiveScissorNV where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.VkFun



type VkCmdSetExclusiveScissorNV =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstExclusiveScissor
       -> #{type uint32_t} -- ^ exclusiveScissorCount
       -> Ptr VkRect2D -- ^ pExclusiveScissors
       -> IO ()

vkFunCmdSetExclusiveScissorNV :: VkFun VkCmdSetExclusiveScissorNV
vkFunCmdSetExclusiveScissorNV = VkFun (Ptr ("vkCmdSetExclusiveScissorNV\0"##))

#else

module Vulkan.Types.Command.VkCmdSetExclusiveScissorNV where

#endif