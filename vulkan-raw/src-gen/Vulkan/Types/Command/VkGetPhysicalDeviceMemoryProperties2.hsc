{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceMemoryProperties2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceMemoryProperties2 -- ^ pMemoryProperties
       -> IO ()

vkFunGetPhysicalDeviceMemoryProperties2 :: VkFun VkGetPhysicalDeviceMemoryProperties2
vkFunGetPhysicalDeviceMemoryProperties2 = VkFun (Ptr ("vkGetPhysicalDeviceMemoryProperties2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceMemoryProperties2"
  vkGetPhysicalDeviceMemoryProperties2
    :: VkGetPhysicalDeviceMemoryProperties2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceMemoryProperties2"
  vkGetPhysicalDeviceMemoryProperties2Unsafe
    :: VkGetPhysicalDeviceMemoryProperties2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties2 where

#endif