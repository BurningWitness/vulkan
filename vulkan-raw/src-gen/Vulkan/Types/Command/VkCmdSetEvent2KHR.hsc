{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2

module Vulkan.Types.Command.VkCmdSetEvent2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDependencyInfo
import Vulkan.Types.VkFun



type VkCmdSetEvent2KHR =
          VkCommandBuffer -- ^ commandBuffer
       -> VkEvent -- ^ event
       -> Ptr VkDependencyInfo -- ^ pDependencyInfo
       -> IO ()

vkFunCmdSetEvent2KHR :: VkFun VkCmdSetEvent2KHR
vkFunCmdSetEvent2KHR = VkFun (Ptr ("vkCmdSetEvent2KHR\0"##))

#else

module Vulkan.Types.Command.VkCmdSetEvent2KHR where

#endif