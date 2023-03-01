{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkQueueFamilyProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceQueueFamilyProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pQueueFamilyPropertyCount
       -> Ptr VkQueueFamilyProperties -- ^ pQueueFamilyProperties
       -> IO ()

vkFunGetPhysicalDeviceQueueFamilyProperties :: VkFun VkGetPhysicalDeviceQueueFamilyProperties
vkFunGetPhysicalDeviceQueueFamilyProperties = VkFun (Ptr ("vkGetPhysicalDeviceQueueFamilyProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceQueueFamilyProperties"
  vkGetPhysicalDeviceQueueFamilyProperties
    :: VkGetPhysicalDeviceQueueFamilyProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceQueueFamilyProperties"
  vkGetPhysicalDeviceQueueFamilyPropertiesUnsafe
    :: VkGetPhysicalDeviceQueueFamilyProperties