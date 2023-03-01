{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_win32_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceWin32PresentationSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceWin32PresentationSupportKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> IO VkBool32

vkFunGetPhysicalDeviceWin32PresentationSupportKHR :: VkFun VkGetPhysicalDeviceWin32PresentationSupportKHR
vkFunGetPhysicalDeviceWin32PresentationSupportKHR = VkFun (Ptr ("vkGetPhysicalDeviceWin32PresentationSupportKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceWin32PresentationSupportKHR where

#endif