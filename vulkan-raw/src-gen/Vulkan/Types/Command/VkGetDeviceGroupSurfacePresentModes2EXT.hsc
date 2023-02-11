{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive && VK_KHR_device_group

module Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModes2EXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceGroupPresentModeFlagsKHR
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR
import Vulkan.Types.VkFun



type VkGetDeviceGroupSurfacePresentModes2EXT =
          VkDevice -- ^ device
       -> Ptr VkPhysicalDeviceSurfaceInfo2KHR -- ^ pSurfaceInfo
       -> Ptr VkDeviceGroupPresentModeFlagsKHR -- ^ pModes
       -> IO VkResult

vkFunGetDeviceGroupSurfacePresentModes2EXT :: VkFun VkGetDeviceGroupSurfacePresentModes2EXT
vkFunGetDeviceGroupSurfacePresentModes2EXT = VkFun (Ptr ("vkGetDeviceGroupSurfacePresentModes2EXT\0"##))

#else

module Vulkan.Types.Command.VkGetDeviceGroupSurfacePresentModes2EXT where

#endif