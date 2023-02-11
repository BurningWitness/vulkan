{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceMemoryProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceMemoryProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceMemoryProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceMemoryProperties -- ^ pMemoryProperties
       -> IO ()

vkFunGetPhysicalDeviceMemoryProperties :: VkFun VkGetPhysicalDeviceMemoryProperties
vkFunGetPhysicalDeviceMemoryProperties = VkFun (Ptr ("vkGetPhysicalDeviceMemoryProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceMemoryProperties"
  vkGetPhysicalDeviceMemoryProperties
    :: VkGetPhysicalDeviceMemoryProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceMemoryProperties"
  vkGetPhysicalDeviceMemoryPropertiesUnsafe
    :: VkGetPhysicalDeviceMemoryProperties