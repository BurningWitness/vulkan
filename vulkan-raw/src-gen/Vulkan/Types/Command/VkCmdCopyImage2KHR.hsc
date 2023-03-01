{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Command.VkCmdCopyImage2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkCopyImageInfo2
import Vulkan.Types.VkFun



type VkCmdCopyImage2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkCopyImageInfo2 -- ^ pCopyImageInfo
       -> IO ()

vkFunCmdCopyImage2KHR :: VkFun VkCmdCopyImage2KHR
vkFunCmdCopyImage2KHR = VkFun (Ptr ("vkCmdCopyImage2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdCopyImage2KHR where

#endif