{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_QNX_screen_surface

module Vulkan.Types.Command.VkGetPhysicalDeviceScreenPresentationSupportQNX where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Protected
import Vulkan.Types.Base
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceScreenPresentationSupportQNX =
          VkPhysicalDevice -- ^ physicalDevice
       -> #{type uint32_t} -- ^ queueFamilyIndex
       -> Ptr ScreenWindow -- ^ window
       -> IO VkBool32

vkFunGetPhysicalDeviceScreenPresentationSupportQNX :: VkFun VkGetPhysicalDeviceScreenPresentationSupportQNX
vkFunGetPhysicalDeviceScreenPresentationSupportQNX = VkFun (Ptr ("vkGetPhysicalDeviceScreenPresentationSupportQNX\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceScreenPresentationSupportQNX where

#endif