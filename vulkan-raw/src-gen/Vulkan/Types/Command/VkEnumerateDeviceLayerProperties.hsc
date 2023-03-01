{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Command.VkEnumerateDeviceLayerProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkLayerProperties
import Vulkan.Types.VkFun



type VkEnumerateDeviceLayerProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pPropertyCount
       -> Ptr VkLayerProperties -- ^ pProperties
       -> IO VkResult

vkFunEnumerateDeviceLayerProperties :: VkFun VkEnumerateDeviceLayerProperties
vkFunEnumerateDeviceLayerProperties = VkFun (Ptr ("vkEnumerateDeviceLayerProperties\0"##))

foreign import CALLCV "vulkan/vulkan.h vkEnumerateDeviceLayerProperties"
  vkEnumerateDeviceLayerProperties
    :: VkEnumerateDeviceLayerProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkEnumerateDeviceLayerProperties"
  vkEnumerateDeviceLayerPropertiesUnsafe
    :: VkEnumerateDeviceLayerProperties