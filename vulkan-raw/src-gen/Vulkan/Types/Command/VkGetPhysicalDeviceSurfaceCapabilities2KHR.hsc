{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_surface_capabilities2

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilities2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR
import Vulkan.Types.Struct.VkSurfaceCapabilities2KHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfaceCapabilities2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceSurfaceInfo2KHR -- ^ pSurfaceInfo
       -> Ptr VkSurfaceCapabilities2KHR -- ^ pSurfaceCapabilities
       -> IO VkResult

vkFunGetPhysicalDeviceSurfaceCapabilities2KHR :: VkFun VkGetPhysicalDeviceSurfaceCapabilities2KHR
vkFunGetPhysicalDeviceSurfaceCapabilities2KHR = VkFun (Ptr ("vkGetPhysicalDeviceSurfaceCapabilities2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilities2KHR where

#endif