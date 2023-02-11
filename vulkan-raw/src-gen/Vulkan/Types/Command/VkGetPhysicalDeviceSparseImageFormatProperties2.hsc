{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties2 where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2
import Vulkan.Types.Struct.VkSparseImageFormatProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSparseImageFormatProperties2 =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceSparseImageFormatInfo2 -- ^ pFormatInfo
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkSparseImageFormatProperties2 -- ^ pProperties
       -> IO ()

vkFunGetPhysicalDeviceSparseImageFormatProperties2 :: VkFun VkGetPhysicalDeviceSparseImageFormatProperties2
vkFunGetPhysicalDeviceSparseImageFormatProperties2 = VkFun (Ptr ("vkGetPhysicalDeviceSparseImageFormatProperties2\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceSparseImageFormatProperties2"
  vkGetPhysicalDeviceSparseImageFormatProperties2
    :: VkGetPhysicalDeviceSparseImageFormatProperties2

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceSparseImageFormatProperties2"
  vkGetPhysicalDeviceSparseImageFormatProperties2Unsafe
    :: VkGetPhysicalDeviceSparseImageFormatProperties2
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties2 where

#endif