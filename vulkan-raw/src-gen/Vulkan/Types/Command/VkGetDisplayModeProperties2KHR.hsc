{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Command.VkGetDisplayModeProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayModeProperties2KHR
import Vulkan.Types.VkFun



type VkGetDisplayModeProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkDisplayKHR -- ^ display
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkDisplayModeProperties2KHR -- ^ pProperties
       -> IO VkResult

vkFunGetDisplayModeProperties2KHR :: VkFun VkGetDisplayModeProperties2KHR
vkFunGetDisplayModeProperties2KHR = VkFun (Ptr ("vkGetDisplayModeProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetDisplayModeProperties2KHR where

#endif