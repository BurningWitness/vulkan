{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalBufferProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfo
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalBufferProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceExternalBufferInfo -- ^ pExternalBufferInfo
       -> Ptr VkExternalBufferProperties -- ^ pExternalBufferProperties
       -> IO ()

vkFunGetPhysicalDeviceExternalBufferProperties :: VkFun VkGetPhysicalDeviceExternalBufferProperties
vkFunGetPhysicalDeviceExternalBufferProperties = VkFun (Ptr ("vkGetPhysicalDeviceExternalBufferProperties\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceExternalBufferProperties"
  vkGetPhysicalDeviceExternalBufferProperties
    :: VkGetPhysicalDeviceExternalBufferProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceExternalBufferProperties"
  vkGetPhysicalDeviceExternalBufferPropertiesUnsafe
    :: VkGetPhysicalDeviceExternalBufferProperties
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferProperties where

#endif