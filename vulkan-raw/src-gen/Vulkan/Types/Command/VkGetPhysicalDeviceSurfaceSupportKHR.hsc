{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfaceSupportKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> VkSurfaceKHR -- ^ surface
       -> Ptr VkBool32 -- ^ pSupported
       -> IO VkResult

vkFunGetPhysicalDeviceSurfaceSupportKHR :: VkFun VkGetPhysicalDeviceSurfaceSupportKHR
vkFunGetPhysicalDeviceSurfaceSupportKHR = VkFun (Ptr ("vkGetPhysicalDeviceSurfaceSupportKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceSupportKHR where

#endif