{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceProperties -- ^ pProperties
       -> IO ()

vkFunGetPhysicalDeviceProperties :: VkFun VkGetPhysicalDeviceProperties
vkFunGetPhysicalDeviceProperties = VkFun (Ptr ("vkGetPhysicalDeviceProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceProperties"
  vkGetPhysicalDeviceProperties
    :: VkGetPhysicalDeviceProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceProperties"
  vkGetPhysicalDevicePropertiesUnsafe
    :: VkGetPhysicalDeviceProperties