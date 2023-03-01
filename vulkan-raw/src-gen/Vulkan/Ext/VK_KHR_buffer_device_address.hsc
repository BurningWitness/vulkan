{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_buffer_device_address

module Vulkan.Ext.VK_KHR_buffer_device_address
  ( pattern VK_KHR_BUFFER_DEVICE_ADDRESS_SPEC_VERSION
  , pattern VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_BUFFER_DEVICE_ADDRESS_FEATURES_KHR
  , pattern VK_STRUCTURE_TYPE_BUFFER_DEVICE_ADDRESS_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_BUFFER_OPAQUE_CAPTURE_ADDRESS_CREATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_MEMORY_OPAQUE_CAPTURE_ADDRESS_ALLOCATE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_DEVICE_MEMORY_OPAQUE_CAPTURE_ADDRESS_INFO_KHR
  , pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR
  , pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR
  , pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR
  , pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR
  , pattern VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR
  , VkPhysicalDeviceBufferDeviceAddressFeaturesKHR
  , VkBufferDeviceAddressInfoKHR
  , VkBufferOpaqueCaptureAddressCreateInfoKHR
  , VkMemoryOpaqueCaptureAddressAllocateInfoKHR
  , VkDeviceMemoryOpaqueCaptureAddressInfoKHR
  , VkGetBufferDeviceAddressKHR
  , vkFunGetBufferDeviceAddressKHR
  , VkGetBufferOpaqueCaptureAddressKHR
  , vkFunGetBufferOpaqueCaptureAddressKHR
  , VkGetDeviceMemoryOpaqueCaptureAddressKHR
  , vkFunGetDeviceMemoryOpaqueCaptureAddressKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkBufferCreateFlagBits
import Vulkan.Types.Enum.VkBufferUsageFlagBits
import Vulkan.Types.Enum.VkMemoryAllocateFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkBufferDeviceAddressInfoKHR
import Vulkan.Types.Struct.VkBufferOpaqueCaptureAddressCreateInfoKHR
import Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfoKHR
import Vulkan.Types.Struct.VkMemoryOpaqueCaptureAddressAllocateInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceBufferDeviceAddressFeaturesKHR
import Vulkan.Types.Command.VkGetBufferDeviceAddressKHR
import Vulkan.Types.Command.VkGetBufferOpaqueCaptureAddressKHR
import Vulkan.Types.Command.VkGetDeviceMemoryOpaqueCaptureAddressKHR
import Vulkan.Types.VkFun



pattern VK_KHR_BUFFER_DEVICE_ADDRESS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_BUFFER_DEVICE_ADDRESS_SPEC_VERSION = 1

pattern VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME :: CString
pattern VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_BUFFER_DEVICE_ADDRESS_EXTENSION_NAME = Ptr ("VK_KHR_buffer_device_address\0"##)

#else

module Vulkan.Ext.VK_KHR_buffer_device_address where

#endif