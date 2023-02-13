{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_physical_device_properties2

module Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties2KHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceSparseImageFormatInfo2
import Vulkan.Types.Struct.VkSparseImageFormatProperties2
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceSparseImageFormatProperties2KHR =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceSparseImageFormatInfo2 -- ^ pFormatInfo
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkSparseImageFormatProperties2 -- ^ pProperties
       -> IO ()

vkFunGetPhysicalDeviceSparseImageFormatProperties2KHR :: VkFun VkGetPhysicalDeviceSparseImageFormatProperties2KHR
vkFunGetPhysicalDeviceSparseImageFormatProperties2KHR = VkFun (Ptr ("vkGetPhysicalDeviceSparseImageFormatProperties2KHR\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceSparseImageFormatProperties2KHR where

#endif