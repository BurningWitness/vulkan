{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilitiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSurfaceCapabilitiesKHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfaceCapabilitiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkSurfaceKHR -- ^ surface
       -> Ptr VkSurfaceCapabilitiesKHR -- ^ pSurfaceCapabilities
       -> IO VkResult

vkFunGetPhysicalDeviceSurfaceCapabilitiesKHR :: VkFun VkGetPhysicalDeviceSurfaceCapabilitiesKHR
vkFunGetPhysicalDeviceSurfaceCapabilitiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceSurfaceCapabilitiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilitiesKHR where

#endif