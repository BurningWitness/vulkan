{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_wayland_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceWaylandPresentationSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceWaylandPresentationSupportKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> Ptr WlDisplay -- ^ display
       -> IO VkBool32

vkFunGetPhysicalDeviceWaylandPresentationSupportKHR :: VkFun VkGetPhysicalDeviceWaylandPresentationSupportKHR
vkFunGetPhysicalDeviceWaylandPresentationSupportKHR = VkFun (Ptr ("vkGetPhysicalDeviceWaylandPresentationSupportKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceWaylandPresentationSupportKHR where

#endif