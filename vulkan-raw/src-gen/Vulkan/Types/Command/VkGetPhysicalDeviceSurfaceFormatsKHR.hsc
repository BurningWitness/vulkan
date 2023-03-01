{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceFormatsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSurfaceFormatKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfaceFormatsKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkSurfaceKHR -- ^ surface
       -> Ptr #{type uint32_t} -- ^ pSurfaceFormatCount
       -> Ptr VkSurfaceFormatKHR -- ^ pSurfaceFormats
       -> IO VkResult

vkFunGetPhysicalDeviceSurfaceFormatsKHR :: VkFun VkGetPhysicalDeviceSurfaceFormatsKHR
vkFunGetPhysicalDeviceSurfaceFormatsKHR = VkFun (Ptr ("vkGetPhysicalDeviceSurfaceFormatsKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceFormatsKHR where

#endif