{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Command.VkGetDisplayModePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayModePropertiesKHR
import Vulkan.Types.VkFun



type VkGetDisplayModePropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkDisplayKHR -- ^ display
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkDisplayModePropertiesKHR -- ^ pProperties
       -> IO VkResult

vkFunGetDisplayModePropertiesKHR :: VkFun VkGetDisplayModePropertiesKHR
vkFunGetDisplayModePropertiesKHR = VkFun (Ptr ("vkGetDisplayModePropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetDisplayModePropertiesKHR where

#endif