{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceProperties2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceProperties2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceProperties2 -- ^ pProperties
       -> IO ()

vkFunGetPhysicalDeviceProperties2 :: VkFun VkGetPhysicalDeviceProperties2
vkFunGetPhysicalDeviceProperties2 = VkFun (Ptr ("vkGetPhysicalDeviceProperties2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceProperties2"
  vkGetPhysicalDeviceProperties2
    :: VkGetPhysicalDeviceProperties2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceProperties2"
  vkGetPhysicalDeviceProperties2Unsafe
    :: VkGetPhysicalDeviceProperties2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceProperties2 where

#endif