{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkCmdExecuteCommands where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkCmdExecuteCommands =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ commandBufferCount
       -> Ptr VkCommandBuffer -- ^ pCommandBuffers
       -> IO ()

vkFunCmdExecuteCommands :: VkFun VkCmdExecuteCommands
vkFunCmdExecuteCommands = VkFun (Ptr ("vkCmdExecuteCommands\0"##))

foreign import CALLCV "vulkan/vulkan.h vkCmdExecuteCommands"
  vkCmdExecuteCommands
    :: VkCmdExecuteCommands

foreign import CALLCV unsafe "vulkan/vulkan.h vkCmdExecuteCommands"
  vkCmdExecuteCommandsUnsafe
    :: VkCmdExecuteCommands