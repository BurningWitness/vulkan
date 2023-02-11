{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkQueueFamilyProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceQueueFamilyProperties2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pQueueFamilyPropertyCount
       -> Ptr VkQueueFamilyProperties2 -- ^ pQueueFamilyProperties
       -> IO ()

vkFunGetPhysicalDeviceQueueFamilyProperties2 :: VkFun VkGetPhysicalDeviceQueueFamilyProperties2
vkFunGetPhysicalDeviceQueueFamilyProperties2 = VkFun (Ptr ("vkGetPhysicalDeviceQueueFamilyProperties2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceQueueFamilyProperties2"
  vkGetPhysicalDeviceQueueFamilyProperties2
    :: VkGetPhysicalDeviceQueueFamilyProperties2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceQueueFamilyProperties2"
  vkGetPhysicalDeviceQueueFamilyProperties2Unsafe
    :: VkGetPhysicalDeviceQueueFamilyProperties2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceQueueFamilyProperties2 where

#endif