{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_external_fence_capabilities

module Vulkan.Ext.VK_KHR_external_fence_capabilities
  ( pattern VK_KHR_EXTERNAL_FENCE_CAPABILITIES_SPEC_VERSION
  , pattern VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_FENCE_INFO_KHR
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_FENCE_PROPERTIES_KHR
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_ID_PROPERTIES_KHR
  , pattern VK_LUID_SIZE_KHR
  , VkExternalFenceHandleTypeFlagsKHR
  , VkExternalFenceHandleTypeFlagBitsKHR
  , pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_FD_BIT_KHR
  , pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_BIT_KHR
  , pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_KHR
  , pattern VK_EXTERNAL_FENCE_HANDLE_TYPE_SYNC_FD_BIT_KHR
  , VkExternalFenceFeatureFlagsKHR
  , VkExternalFenceFeatureFlagBitsKHR
  , pattern VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR
  , pattern VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR
  , VkPhysicalDeviceExternalFenceInfoKHR
  , VkExternalFencePropertiesKHR
  , VkPhysicalDeviceIDPropertiesKHR
  , VkGetPhysicalDeviceExternalFencePropertiesKHR
  , vkFunGetPhysicalDeviceExternalFencePropertiesKHR
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Constant
import Vulkan.Types.Enum.VkExternalFenceFeatureFlagBits
import Vulkan.Types.Enum.VkExternalFenceFeatureFlagBitsKHR
import Vulkan.Types.Enum.VkExternalFenceFeatureFlagsKHR
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBitsKHR
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExternalFencePropertiesKHR
import Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfoKHR
import Vulkan.Types.Struct.VkPhysicalDeviceIDPropertiesKHR
import Vulkan.Types.Command.VkGetPhysicalDeviceExternalFencePropertiesKHR
import Vulkan.Types.VkFun



pattern VK_KHR_EXTERNAL_FENCE_CAPABILITIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_EXTERNAL_FENCE_CAPABILITIES_SPEC_VERSION = 1

pattern VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME :: CString
pattern VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_EXTERNAL_FENCE_CAPABILITIES_EXTENSION_NAME = Ptr ("VK_KHR_external_fence_capabilities\0"##)

#else

module Vulkan.Ext.VK_KHR_external_fence_capabilities where

#endif