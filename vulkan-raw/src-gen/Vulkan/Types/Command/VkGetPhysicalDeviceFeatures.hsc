{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkGetPhysicalDeviceFeatures where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceFeatures
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceFeatures =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceFeatures -- ^ pFeatures
       -> IO ()

vkFunGetPhysicalDeviceFeatures :: VkFun VkGetPhysicalDeviceFeatures
vkFunGetPhysicalDeviceFeatures = VkFun (Ptr ("vkGetPhysicalDeviceFeatures\0"##))

foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceFeatures"
  vkGetPhysicalDeviceFeatures
    :: VkGetPhysicalDeviceFeatures

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceFeatures"
  vkGetPhysicalDeviceFeaturesUnsafe
    :: VkGetPhysicalDeviceFeatures