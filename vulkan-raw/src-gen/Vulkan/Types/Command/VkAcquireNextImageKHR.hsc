{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Command.VkAcquireNextImageKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkAcquireNextImageKHR =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> #{type uint64_t} -- ^ timeout
       -> VkSemaphore -- ^ semaphore
       -> VkFence -- ^ fence
       -> Ptr #{type uint32_t} -- ^ pImageIndex
       -> IO VkResult

vkFunAcquireNextImageKHR :: VkFun VkAcquireNextImageKHR
vkFunAcquireNextImageKHR = VkFun (Ptr ("vkAcquireNextImageKHR\0"##))

#else

module Vulkan.Types.Command.VkAcquireNextImageKHR where

#endif