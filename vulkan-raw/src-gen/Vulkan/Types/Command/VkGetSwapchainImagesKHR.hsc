{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Command.VkGetSwapchainImagesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetSwapchainImagesKHR =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> Ptr #{type uint32_t} -- ^ pSwapchainImageCount
       -> Ptr VkImage -- ^ pSwapchainImages
       -> IO VkResult

vkFunGetSwapchainImagesKHR :: VkFun VkGetSwapchainImagesKHR
vkFunGetSwapchainImagesKHR = VkFun (Ptr ("vkGetSwapchainImagesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetSwapchainImagesKHR where

#endif