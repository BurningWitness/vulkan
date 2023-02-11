{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdSetScissor where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.VkFun



type VkCmdSetScissor =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ firstScissor
       -> #{type uint32_t} -- ^ scissorCount
       -> Ptr VkRect2D -- ^ pScissors
       -> IO ()

vkFunCmdSetScissor :: VkFun VkCmdSetScissor
vkFunCmdSetScissor = VkFun (Ptr ("vkCmdSetScissor\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdSetScissor"
  vkCmdSetScissor
    :: VkCmdSetScissor

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdSetScissor"
  vkCmdSetScissorUnsafe
    :: VkCmdSetScissor