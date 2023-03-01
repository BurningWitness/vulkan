{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdCopyBuffer2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyBufferInfo2
import Vulkan.Types.VkFun



type VkCmdCopyBuffer2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyBufferInfo2 -- ^ pCopyBufferInfo
       -> IO ()

vkFunCmdCopyBuffer2KHR :: VkFun VkCmdCopyBuffer2KHR
vkFunCmdCopyBuffer2KHR = VkFun (Ptr ("vkCmdCopyBuffer2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyBuffer2KHR where

#endif