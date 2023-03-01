{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_device_group_creation

module Vulkan.Ext.VK_KHR_device_group_creation
  ( pattern VK_KHR_DEVICE_GROUP_CREATION_SPEC_VERSION
  , pattern VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GROUP_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_GROUP_DEVICE_CREATE_INFO_KHR
  , pattern VK_MAX_DEVICE_GROUP_SIZE_KHR
  , VkPhysicalDeviceGroupPropertiesKHR
  , VkDeviceGroupDeviceCreateInfoKHR
  , VkEnumeratePhysicalDeviceGroupsKHR
  , vkFunEnumeratePhysicalDeviceGroupsKHR
  , pattern VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkMemoryHeapFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDeviceGroupDeviceCreateInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceGroupPropertiesKHR
import Vulkan.Types.Command.VkEnumeratePhysicalDeviceGroupsKHR
import Vulkan.Types.VkFun



pattern VK_KHR_DEVICE_GROUP_CREATION_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_DEVICE_GROUP_CREATION_SPEC_VERSION = 1

pattern VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME :: CString
pattern VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_DEVICE_GROUP_CREATION_EXTENSION_NAME = Ptr ("VK_KHR_device_group_creation\0"##)

#else

module Vulkan.Ext.VK_KHR_device_group_creation where

#endif