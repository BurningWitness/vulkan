{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_capabilities

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalFencePropertiesKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalFenceProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalFencePropertiesKHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceExternalFenceInfo -- ^ pExternalFenceInfo
       -> Ptr VkExternalFenceProperties -- ^ pExternalFenceProperties
       -> IO ()

vkFunGetPhysicalDeviceExternalFencePropertiesKHR :: VkFun VkGetPhysicalDeviceExternalFencePropertiesKHR
vkFunGetPhysicalDeviceExternalFencePropertiesKHR = VkFun (Ptr ("vkGetPhysicalDeviceExternalFencePropertiesKHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalFencePropertiesKHR where

#endif