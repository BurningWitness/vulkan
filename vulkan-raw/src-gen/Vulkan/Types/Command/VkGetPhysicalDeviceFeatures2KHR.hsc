{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFeatures2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceFeatures2 -- ^ pFeatures
       -> IO ()

vkFunGetPhysicalDeviceFeatures2KHR :: VkFun VkGetPhysicalDeviceFeatures2KHR
vkFunGetPhysicalDeviceFeatures2KHR = VkFun (Ptr ("vkGetPhysicalDeviceFeatures2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures2KHR where

#endif