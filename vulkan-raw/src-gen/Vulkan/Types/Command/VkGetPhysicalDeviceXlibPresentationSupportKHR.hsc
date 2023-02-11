{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xlib_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceXlibPresentationSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceXlibPresentationSupportKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> Ptr Display -- ^ dpy
       -> VisualID -- ^ visualID
       -> IO VkBool32

vkFunGetPhysicalDeviceXlibPresentationSupportKHR :: VkFun VkGetPhysicalDeviceXlibPresentationSupportKHR
vkFunGetPhysicalDeviceXlibPresentationSupportKHR = VkFun (Ptr ("vkGetPhysicalDeviceXlibPresentationSupportKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceXlibPresentationSupportKHR where

#endif