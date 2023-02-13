{-# LANGUAGE CApiFFI #-}
{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group_creation

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroupsKHR where

import Data.Int
import Data.Word
import GHC.Ptr
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPhysicalDeviceGroupProperties
import Vulkan.Types.VkFun



type VkEnumeratePhysicalDeviceGroupsKHR =
          VkInstance -- ^ instance
       -> Ptr #{type uint32_t} -- ^ pPhysicalDeviceGroupCount
       -> Ptr VkPhysicalDeviceGroupProperties -- ^ pPhysicalDeviceGroupProperties
       -> IO VkResult

vkFunEnumeratePhysicalDeviceGroupsKHR :: VkFun VkEnumeratePhysicalDeviceGroupsKHR
vkFunEnumeratePhysicalDeviceGroupsKHR = VkFun (Ptr ("vkEnumeratePhysicalDeviceGroupsKHR\0"##))

#else

module Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroupsKHR where

#endif