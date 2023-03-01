{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_capabilities

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalSemaphorePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalSemaphoreProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfo
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalSemaphorePropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceExternalSemaphoreInfo -- ^ pExternalSemaphoreInfo
       -> Ptr VkExternalSemaphoreProperties -- ^ pExternalSemaphoreProperties
       -> IO ()

vkFunGetPhysicalDeviceExternalSemaphorePropertiesKHR :: VkFun VkGetPhysicalDeviceExternalSemaphorePropertiesKHR
vkFunGetPhysicalDeviceExternalSemaphorePropertiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceExternalSemaphorePropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalSemaphorePropertiesKHR where

#endif