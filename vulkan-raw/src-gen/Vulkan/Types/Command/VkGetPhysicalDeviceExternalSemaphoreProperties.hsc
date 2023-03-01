{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalSemaphoreProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalSemaphoreProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfo
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalSemaphoreProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceExternalSemaphoreInfo -- ^ pExternalSemaphoreInfo
       -> Ptr VkExternalSemaphoreProperties -- ^ pExternalSemaphoreProperties
       -> IO ()

vkFunGetPhysicalDeviceExternalSemaphoreProperties :: VkFun VkGetPhysicalDeviceExternalSemaphoreProperties
vkFunGetPhysicalDeviceExternalSemaphoreProperties = VkFun (Ptr ("vkGetPhysicalDeviceExternalSemaphoreProperties\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceExternalSemaphoreProperties"
  vkGetPhysicalDeviceExternalSemaphoreProperties
    :: VkGetPhysicalDeviceExternalSemaphoreProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceExternalSemaphoreProperties"
  vkGetPhysicalDeviceExternalSemaphorePropertiesUnsafe
    :: VkGetPhysicalDeviceExternalSemaphoreProperties
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalSemaphoreProperties where

#endif