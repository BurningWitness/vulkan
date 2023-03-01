{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_memory_capabilities

module Vulkan.Ext.VK_KHR_external_memory_capabilities
  ( pattern VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_IMAGE_FORMAT_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_IMAGE_FORMAT_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_BUFFER_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_BUFFER_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR
  , pattern VK_LUID_SIZE_KHR
  , VkExternalMemoryHandleTypeFlagsKHR
  , VkExternalMemoryHandleTypeFlagBitsKHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_FD_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_TEXTURE_KMT_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_HEAP_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D12_RESOURCE_BIT_KHR
  , VkExternalMemoryFeatureFlagsKHR
  , VkExternalMemoryFeatureFlagBitsKHR
  , pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR
  , pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR
  , VkExternalMemoryPropertiesKHR
  , VkPhysicalDeviceExternalImageFormatInfoKHR
  , VkExternalImageFormatPropertiesKHR
  , VkPhysicalDeviceExternalBufferInfoKHR
  , VkExternalBufferPropertiesKHR
  , VkPhysicalDeviceIDPropertiesKHR
  , VkGetPhysicalDeviceExternalBufferPropertiesKHR
  , vkFunGetPhysicalDeviceExternalBufferPropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlagBits
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlagBitsKHR
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlagsKHR
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBitsKHR
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalBufferPropertiesKHR
import Vulkan.Types.Struct.VkExternalImageFormatPropertiesKHR
import Vulkan.Types.Struct.VkExternalMemoryPropertiesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceExternalBufferInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceExternalImageFormatInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceIDPropertiesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceExternalBufferPropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = Ptr ("VK_KHR_external_memory_capabilities\0"##)

#else

module Vulkan.Ext.VK_KHR_external_memory_capabilities where

#endif