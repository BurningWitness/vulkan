{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferPropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalBufferProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalBufferPropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceExternalBufferInfo -- ^ pExternalBufferInfo
       -> Ptr VkExternalBufferProperties -- ^ pExternalBufferProperties
       -> IO ()

vkFunGetPhysicalDeviceExternalBufferPropertiesKHR :: VkFun VkGetPhysicalDeviceExternalBufferPropertiesKHR
vkFunGetPhysicalDeviceExternalBufferPropertiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceExternalBufferPropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferPropertiesKHR where

#endif