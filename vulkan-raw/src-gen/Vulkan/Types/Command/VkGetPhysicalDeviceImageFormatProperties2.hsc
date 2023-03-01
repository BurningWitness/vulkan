{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkImageFormatProperties2
import Vulkan.Types.Struct.VkPhysicalDeviceImageFormatInfo2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceImageFormatProperties2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceImageFormatInfo2 -- ^ pImageFormatInfo
       -> Ptr VkImageFormatProperties2 -- ^ pImageFormatProperties
       -> IO VkResult

vkFunGetPhysicalDeviceImageFormatProperties2 :: VkFun VkGetPhysicalDeviceImageFormatProperties2
vkFunGetPhysicalDeviceImageFormatProperties2 = VkFun (Ptr ("vkGetPhysicalDeviceImageFormatProperties2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceImageFormatProperties2"
  vkGetPhysicalDeviceImageFormatProperties2
    :: VkGetPhysicalDeviceImageFormatProperties2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceImageFormatProperties2"
  vkGetPhysicalDeviceImageFormatProperties2Unsafe
    :: VkGetPhysicalDeviceImageFormatProperties2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceImageFormatProperties2 where

#endif