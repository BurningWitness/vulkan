{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_swapchain) || (VK_KHR_swapchain)

module Vulkan.Types.Command.VkAcquireNextImage2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkAcquireNextImageInfoKHR
import Vulkan.Types.VkFun



type VkAcquireNextImage2KHR =
          VkDevice -- ^ device
       -> Ptr VkAcquireNextImageInfoKHR -- ^ pAcquireInfo
       -> Ptr #{type uint32_t} -- ^ pImageIndex
       -> IO VkResult

vkFunAcquireNextImage2KHR :: VkFun VkAcquireNextImage2KHR
vkFunAcquireNextImage2KHR = VkFun (Ptr ("vkAcquireNextImage2KHR\0"##))

#else

module Vulkan.Types.Command.VkAcquireNextImage2KHR where

#endif