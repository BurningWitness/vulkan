{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfacePresentModesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfacePresentModesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkSurfaceKHR -- ^ surface
       -> Ptr #{type uint32_t} -- ^ pPresentModeCount
       -> Ptr VkPresentModeKHR -- ^ pPresentModes
       -> IO VkResult

vkFunGetPhysicalDeviceSurfacePresentModesKHR :: VkFun VkGetPhysicalDeviceSurfacePresentModesKHR
vkFunGetPhysicalDeviceSurfacePresentModesKHR = VkFun (Ptr ("vkGetPhysicalDeviceSurfacePresentModesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfacePresentModesKHR where

#endif