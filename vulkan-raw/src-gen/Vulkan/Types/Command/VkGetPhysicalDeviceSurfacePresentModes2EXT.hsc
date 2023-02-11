{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfacePresentModes2EXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkPresentModeKHR
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfacePresentModes2EXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceSurfaceInfo2KHR -- ^ pSurfaceInfo
       -> Ptr #{type uint32_t} -- ^ pPresentModeCount
       -> Ptr VkPresentModeKHR -- ^ pPresentModes
       -> IO VkResult

vkFunGetPhysicalDeviceSurfacePresentModes2EXT :: VkFun VkGetPhysicalDeviceSurfacePresentModes2EXT
vkFunGetPhysicalDeviceSurfacePresentModes2EXT = VkFun (Ptr ("vkGetPhysicalDeviceSurfacePresentModes2EXT\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfacePresentModes2EXT where

#endif