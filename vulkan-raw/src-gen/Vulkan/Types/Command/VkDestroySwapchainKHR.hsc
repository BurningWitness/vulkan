{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Command.VkDestroySwapchainKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.VkFun



type VkDestroySwapchainKHR =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> IO ()

vkFunDestroySwapchainKHR :: VkFun VkDestroySwapchainKHR
vkFunDestroySwapchainKHR = VkFun (Ptr ("vkDestroySwapchainKHR\0"##))

#else

module Vulkan.Types.Command.VkDestroySwapchainKHR where

#endif