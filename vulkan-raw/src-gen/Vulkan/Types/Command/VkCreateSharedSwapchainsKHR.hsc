{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display_swapchain

module Vulkan.Types.Command.VkCreateSharedSwapchainsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAllocationCallbacks
import Vulkan.Types.Struct.VkSwapchainCreateInfoKHR
import Vulkan.Types.VkFun



type VkCreateSharedSwapchainsKHR =
          VkDevice -- ^ device
       -> #{type uint32_t} -- ^ swapchainCount
       -> Ptr VkSwapchainCreateInfoKHR -- ^ pCreateInfos
       -> Ptr VkAllocationCallbacks -- ^ pAllocator
       -> Ptr VkSwapchainKHR -- ^ pSwapchains
       -> IO VkResult

vkFunCreateSharedSwapchainsKHR :: VkFun VkCreateSharedSwapchainsKHR
vkFunCreateSharedSwapchainsKHR = VkFun (Ptr ("vkCreateSharedSwapchainsKHR\0"##))

#else

module Vulkan.Types.Command.VkCreateSharedSwapchainsKHR where

#endif