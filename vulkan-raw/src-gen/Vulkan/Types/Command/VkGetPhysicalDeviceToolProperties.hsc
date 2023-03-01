{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Command.VkGetPhysicalDeviceToolProperties where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceToolProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceToolProperties =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pToolCount
       -> Ptr VkPhysicalDeviceToolProperties -- ^ pToolProperties
       -> IO VkResult

vkFunGetPhysicalDeviceToolProperties :: VkFun VkGetPhysicalDeviceToolProperties
vkFunGetPhysicalDeviceToolProperties = VkFun (Ptr ("vkGetPhysicalDeviceToolProperties\0"##))

##if CORE_1_3
foreign import CALLCV "vulkan/vulkan.h vkGetPhysicalDeviceToolProperties"
  vkGetPhysicalDeviceToolProperties
    :: VkGetPhysicalDeviceToolProperties

foreign import CALLCV unsafe "vulkan/vulkan.h vkGetPhysicalDeviceToolProperties"
  vkGetPhysicalDeviceToolPropertiesUnsafe
    :: VkGetPhysicalDeviceToolProperties
##endif

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceToolProperties where

#endif