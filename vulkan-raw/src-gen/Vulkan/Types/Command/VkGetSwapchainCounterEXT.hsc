{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Command.VkGetSwapchainCounterEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkSurfaceCounterFlagBitsEXT
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetSwapchainCounterEXT =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> VkSurfaceCounterFlagBitsEXT -- ^ counter
       -> Ptr #{type uint64_t} -- ^ pCounterValue
       -> IO VkResult

vkFunGetSwapchainCounterEXT :: VkFun VkGetSwapchainCounterEXT
vkFunGetSwapchainCounterEXT = VkFun (Ptr ("vkGetSwapchainCounterEXT\0"##))

#else

module Vulkan.Types.Command.VkGetSwapchainCounterEXT where

#endif