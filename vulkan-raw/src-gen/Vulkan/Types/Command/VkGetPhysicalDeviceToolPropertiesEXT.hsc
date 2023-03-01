{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_EXT_tooling_info

module Vulkan.Types.Command.VkGetPhysicalDeviceToolPropertiesEXT where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceToolProperties
import Vulkan.Types.VkFun



type VkGetPhysicalDeviceToolPropertiesEXT =
          VkPhysicalDevice -- ^ physicalDevice
       -> Ptr #{type uint32_t} -- ^ pToolCount
       -> Ptr VkPhysicalDeviceToolProperties -- ^ pToolProperties
       -> IO VkResult

vkFunGetPhysicalDeviceToolPropertiesEXT :: VkFun VkGetPhysicalDeviceToolPropertiesEXT
vkFunGetPhysicalDeviceToolPropertiesEXT = VkFun (Ptr ("vkGetPhysicalDeviceToolPropertiesEXT\0"##))

#else

module Vulkan.Types.Command.VkGetPhysicalDeviceToolPropertiesEXT where

#endif