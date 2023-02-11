{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_present_wait

module Vulkan.Types.Command.VkWaitForPresentKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkWaitForPresentKHR =
          VkDevice -- ^ device
       -> VkSwapchainKHR -- ^ swapchain
       -> #{type uint64_t} -- ^ presentId
       -> #{type uint64_t} -- ^ timeout
       -> IO VkResult

vkFunWaitForPresentKHR :: VkFun VkWaitForPresentKHR
vkFunWaitForPresentKHR = VkFun (Ptr ("vkWaitForPresentKHR\0"##))

#else

module Vulkan.Types.Command.VkWaitForPresentKHR where

#endif