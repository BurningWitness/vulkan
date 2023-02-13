{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdPipelineBarrier2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.VkFun



type VkCmdPipelineBarrier2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> Ptr VkDependencyInfo -- ^ pDependencyInfo
       -> IO ()

vkFunCmdPipelineBarrier2KHR :: VkFun VkCmdPipelineBarrier2KHR
vkFunCmdPipelineBarrier2KHR = VkFun (Ptr ("vkCmdPipelineBarrier2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdPipelineBarrier2KHR where

#endif