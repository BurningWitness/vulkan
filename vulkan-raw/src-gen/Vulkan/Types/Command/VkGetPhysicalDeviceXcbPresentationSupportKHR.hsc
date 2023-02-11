{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_xcb_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceXcbPresentationSupportKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceXcbPresentationSupportKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> Ptr XcbConnectionT -- ^ connection
       -> XcbVisualidT -- ^ visual_id
       -> IO VkBool32

vkFunGetPhysicalDeviceXcbPresentationSupportKHR :: VkFun VkGetPhysicalDeviceXcbPresentationSupportKHR
vkFunGetPhysicalDeviceXcbPresentationSupportKHR = VkFun (Ptr ("vkGetPhysicalDeviceXcbPresentationSupportKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceXcbPresentationSupportKHR where

#endif