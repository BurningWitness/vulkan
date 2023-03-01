{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)

module Vulkan.Types.Command.VkGetDeviceGroupPresentCapabilitiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDeviceGroupPresentCapabilitiesKHR
import Vulkan.Types.VkFun



type VkGetDeviceGroupPresentCapabilitiesKHR =
          VkDevice -- ^ device
       -> Ptr VkDeviceGroupPresentCapabilitiesKHR -- ^ pDeviceGroupPresentCapabilities
       -> IO VkResult

vkFunGetDeviceGroupPresentCapabilitiesKHR :: VkFun VkGetDeviceGroupPresentCapabilitiesKHR
vkFunGetDeviceGroupPresentCapabilitiesKHR = VkFun (Ptr ("vkGetDeviceGroupPresentCapabilitiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceGroupPresentCapabilitiesKHR where

#endif