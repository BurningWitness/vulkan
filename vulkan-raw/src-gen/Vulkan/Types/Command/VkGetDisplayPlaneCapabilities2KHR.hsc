{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Command.VkGetDisplayPlaneCapabilities2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayPlaneCapabilities2KHR
import Vulkan.Types.Struct.VkDisplayPlaneInfo2KHR
import Vulkan.Types.VkFun



type VkGetDisplayPlaneCapabilities2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkDisplayPlaneInfo2KHR -- ^ pDisplayPlaneInfo
       -> Ptr VkDisplayPlaneCapabilities2KHR -- ^ pCapabilities
       -> IO VkResult

vkFunGetDisplayPlaneCapabilities2KHR :: VkFun VkGetDisplayPlaneCapabilities2KHR
vkFunGetDisplayPlaneCapabilities2KHR = VkFun (Ptr ("vkGetDisplayPlaneCapabilities2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetDisplayPlaneCapabilities2KHR where

#endif