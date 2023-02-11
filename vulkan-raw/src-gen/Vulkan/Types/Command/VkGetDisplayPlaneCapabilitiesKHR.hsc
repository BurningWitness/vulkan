{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkGetDisplayPlaneCapabilitiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayPlaneCapabilitiesKHR
import Vulkan.Types.VkFun



type VkGetDisplayPlaneCapabilitiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkDisplayModeKHR -- ^ mode
       -> #{type uint32_t} -- ^ planeIndex
       -> Ptr VkDisplayPlaneCapabilitiesKHR -- ^ pCapabilities
       -> IO VkResult

vkFunGetDisplayPlaneCapabilitiesKHR :: VkFun VkGetDisplayPlaneCapabilitiesKHR
vkFunGetDisplayPlaneCapabilitiesKHR = VkFun (Ptr ("vkGetDisplayPlaneCapabilitiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDisplayPlaneCapabilitiesKHR where

#endif