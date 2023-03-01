{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkFormatProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFormatProperties2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> VkFormat -- ^ format
       -> Ptr VkFormatProperties2 -- ^ pFormatProperties
       -> IO ()

vkFunGetPhysicalDeviceFormatProperties2 :: VkFun VkGetPhysicalDeviceFormatProperties2
vkFunGetPhysicalDeviceFormatProperties2 = VkFun (Ptr ("vkGetPhysicalDeviceFormatProperties2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceFormatProperties2"
  vkGetPhysicalDeviceFormatProperties2
    :: VkGetPhysicalDeviceFormatProperties2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceFormatProperties2"
  vkGetPhysicalDeviceFormatProperties2Unsafe
    :: VkGetPhysicalDeviceFormatProperties2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceFormatProperties2 where

#endif