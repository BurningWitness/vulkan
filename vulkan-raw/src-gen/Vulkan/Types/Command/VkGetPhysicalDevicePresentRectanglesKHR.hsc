{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)

module Vulkan.Types.Command.VkGetPhysicalDevicePresentRectanglesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkRect2D
import Vulkan.Types.VkFun



type VkGetPhysicalDevicePresentRectanglesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkSurfaceKHR -- ^ surface
       -> Ptr #{type uint32_t} -- ^ pRectCount
       -> Ptr VkRect2D -- ^ pRects
       -> IO VkResult

vkFunGetPhysicalDevicePresentRectanglesKHR :: VkFun VkGetPhysicalDevicePresentRectanglesKHR
vkFunGetPhysicalDevicePresentRectanglesKHR = VkFun (Ptr ("vkGetPhysicalDevicePresentRectanglesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDevicePresentRectanglesKHR where

#endif