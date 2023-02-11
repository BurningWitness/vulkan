{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Command.VkCreateSwapchainKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkSwapchainCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateSwapchainKHR =
          VkDevice -- ^ device
       -> Ptr VkSwapchainCreateInfoKHR -- ^ pCreateInfo
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSwapchainKHR -- ^ pSwapchain
       -> IO VkResult

vkFunCreateSwapchainKHR :: VkFun VkCreateSwapchainKHR
vkFunCreateSwapchainKHR = VkFun (Ptr ("vkCreateSwapchainKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateSwapchainKHR where

#endif