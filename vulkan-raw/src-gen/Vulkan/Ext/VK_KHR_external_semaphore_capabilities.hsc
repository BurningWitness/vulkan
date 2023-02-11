{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_semaphore_capabilities

module Vulkan.Ext.VK_KHR_external_semaphore_capabilities
  ( pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_SEMAPHORE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_SEMAPHORE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR
  , pattern VK_LUID_SIZE_KHR
  , VkExternalSemaphoreHandleTypeFlagsKHR
  , VkExternalSemaphoreHandleTypeFlagBitsKHR
  , pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR
  , pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR
  , pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
  , pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_D3D12_FENCE_BIT_KHR
  , pattern VK_EXTERNAL_SEMAPHORE_HANDLE_TYPE_SYNC_FD_BIT_KHR
  , VkExternalSemaphoreFeatureFlagsKHR
  , VkExternalSemaphoreFeatureFlagBitsKHR
  , pattern VK_EXTERNAL_SEMAPHORE_FEATURE_EXPORTABLE_BIT_KHR
  , pattern VK_EXTERNAL_SEMAPHORE_FEATURE_IMPORTABLE_BIT_KHR
  , VkPhysicalDeviceExternalSemaphoreInfoKHR
  , VkExternalSemaphorePropertiesKHR
  , VkPhysicalDeviceIDPropertiesKHR
  , VkGetPhysicalDeviceExternalSemaphorePropertiesKHR
  , vkFunGetPhysicalDeviceExternalSemaphorePropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlagBits
import Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlagBitsKHR
import Vulkan.Types.Enum.VkExternalSemaphoreFeatureFlagsKHR
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBits
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBitsKHR
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalSemaphorePropertiesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceExternalSemaphoreInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceIDPropertiesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceExternalSemaphorePropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_SEMAPHORE_CAPABILITIES_EXTENSION_NAME = Ptr ("VK_KHR_external_semaphore_capabilities\0"##)

#else

module Vulkan.Ext.VK_KHR_external_semaphore_capabilities where

#endif