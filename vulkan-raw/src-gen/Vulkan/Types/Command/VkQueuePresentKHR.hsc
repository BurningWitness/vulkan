{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_swapchain

module Vulkan.Types.Command.VkQueuePresentKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPresentInfoKHR
import Vulkan.Types.VkFun



type VkQueuePresentKHR =
          VkQueue -- ^ queue
       -> Ptr VkPresentInfoKHR -- ^ pPresentInfo
       -> IO VkResult

vkFunQueuePresentKHR :: VkFun VkQueuePresentKHR
vkFunQueuePresentKHR = VkFun (Ptr ("vkQueuePresentKHR\0"##))

#else

module Vulkan.Types.Command.VkQueuePresentKHR where

#endif