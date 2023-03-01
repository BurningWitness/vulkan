{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_shared_presentable_image

module Vulkan.Types.Command.VkGetSwapchainStatusKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetSwapchainStatusKHR =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> IO VkResult

vkFunGetSwapchainStatusKHR :: VkFun VkGetSwapchainStatusKHR
vkFunGetSwapchainStatusKHR = VkFun (Ptr ("vkGetSwapchainStatusKHR\0"##))

#else

module Vulkan.Types.Command.VkGetSwapchainStatusKHR where

#endif