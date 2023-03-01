{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkEnumerateDeviceExtensionProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkExtensionProperties
import Vulkan.Types.VkFun



type VkEnumerateDeviceExtensionProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type char} -- ^ pLayerName
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkExtensionProperties -- ^ pProperties
       -> IO VkResult

vkFunEnumerateDeviceExtensionProperties :: VkFun VkEnumerateDeviceExtensionProperties
vkFunEnumerateDeviceExtensionProperties = VkFun (Ptr ("vkEnumerateDeviceExtensionProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkEnumerateDeviceExtensionProperties"
  vkEnumerateDeviceExtensionProperties
    :: VkEnumerateDeviceExtensionProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumerateDeviceExtensionProperties"
  vkEnumerateDeviceExtensionPropertiesUnsafe
    :: VkEnumerateDeviceExtensionProperties