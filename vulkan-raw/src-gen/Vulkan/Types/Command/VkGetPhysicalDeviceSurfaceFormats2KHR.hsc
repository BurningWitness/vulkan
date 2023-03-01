{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_surface_capabilities2

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceFormats2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceSurfaceInfo2KHR
import Vulkan.Types.Struct.VkSurfaceFormat2KHR
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSurfaceFormats2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceSurfaceInfo2KHR -- ^ pSurfaceInfo
       -> Ptr #{type uint32_t} -- ^ pSurfaceFormatCount
       -> Ptr VkSurfaceFormat2KHR -- ^ pSurfaceFormats
       -> IO VkResult

vkFunGetPhysicalDeviceSurfaceFormats2KHR :: VkFun VkGetPhysicalDeviceSurfaceFormats2KHR
vkFunGetPhysicalDeviceSurfaceFormats2KHR = VkFun (Ptr ("vkGetPhysicalDeviceSurfaceFormats2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSurfaceFormats2KHR where

#endif