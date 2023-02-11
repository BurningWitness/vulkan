{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if (VK_KHR_device_group && VK_KHR_surface) || (VK_KHR_swapchain)

module Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.VkFun



type VkGetDeviceGroupSurfacePresentModesKHR =
          VkDevice -- ^ device
       -> VkSurfaceKHR -- ^ surface
       -> Ptr VkDeviceGroupPresentModeFlagsKHR -- ^ pModes
       -> IO VkResult

vkFunGetDeviceGroupSurfacePresentModesKHR :: VkFun VkGetDeviceGroupSurfacePresentModesKHR
vkFunGetDeviceGroupSurfacePresentModesKHR = VkFun (Ptr ("vkGetDeviceGroupSurfacePresentModesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModesKHR where

#endif