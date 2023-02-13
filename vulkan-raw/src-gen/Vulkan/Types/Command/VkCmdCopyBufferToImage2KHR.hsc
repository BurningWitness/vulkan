{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdCopyBufferToImage2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyBufferToImageInfo2
import Vulkan.Types.VkFun



type VkCmdCopyBufferToImage2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyBufferToImageInfo2 -- ^ pCopyBufferToImageInfo
       -> IO ()

vkFunCmdCopyBufferToImage2KHR :: VkFun VkCmdCopyBufferToImage2KHR
vkFunCmdCopyBufferToImage2KHR = VkFun (Ptr ("vkCmdCopyBufferToImage2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyBufferToImage2KHR where

#endif