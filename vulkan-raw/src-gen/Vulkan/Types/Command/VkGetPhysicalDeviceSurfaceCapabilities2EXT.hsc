{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_surface_counter

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilities2EXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkSurfaceCapabilities2EXT
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfaceCapabilities2EXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkSurfaceKHR -- ^ surface
       -> Ptr VkSurfaceCapabilities2EXT -- ^ pSurfaceCapabilities
       -> IO VkResult

vkFunGetPhysicalDeviceSurfaceCapabilities2EXT :: VkFun VkGetPhysicalDeviceSurfaceCapabilities2EXT
vkFunGetPhysicalDeviceSurfaceCapabilities2EXT = VkFun (Ptr ("vkGetPhysicalDeviceSurfaceCapabilities2EXT\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceCapabilities2EXT where

#endif