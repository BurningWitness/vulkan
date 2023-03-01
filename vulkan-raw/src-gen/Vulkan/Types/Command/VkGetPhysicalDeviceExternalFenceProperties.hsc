{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalFenceProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExternalFenceProperties
import Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceExternalFenceProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr VkPhysicalDeviceExternalFenceInfo -- ^ pExternalFenceInfo
       -> Ptr VkExternalFenceProperties -- ^ pExternalFenceProperties
       -> IO ()

vkFunGetPhysicalDeviceExternalFenceProperties :: VkFun VkGetPhysicalDeviceExternalFenceProperties
vkFunGetPhysicalDeviceExternalFenceProperties = VkFun (Ptr ("vkGetPhysicalDeviceExternalFenceProperties\0"##))

##if CORE_1_1
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceExternalFenceProperties"
  vkGetPhysicalDeviceExternalFenceProperties
    :: VkGetPhysicalDeviceExternalFenceProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceExternalFenceProperties"
  vkGetPhysicalDeviceExternalFencePropertiesUnsafe
    :: VkGetPhysicalDeviceExternalFenceProperties
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceExternalFenceProperties where

#endif