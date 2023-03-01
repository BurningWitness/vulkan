{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdWaitEvents2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.VkFun



type VkCmdWaitEvents2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> #{type uint32_t} -- ^ eventCount
       -> Ptr VkEvent -- ^ pEvents
       -> Ptr VkDependencyInfo -- ^ pDependencyInfos
       -> IO ()

vkFunCmdWaitEvents2KHR :: VkFun VkCmdWaitEvents2KHR
vkFunCmdWaitEvents2KHR = VkFun (Ptr ("vkCmdWaitEvents2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdWaitEvents2KHR where

#endif