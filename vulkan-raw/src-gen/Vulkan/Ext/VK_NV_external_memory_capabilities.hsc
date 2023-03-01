{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_NV_external_memory_capabilities

module Vulkan.Ext.VK_NV_external_memory_capabilities
  ( pattern VK_NV_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION
  , pattern VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME
  , VkExternalMemoryHandleTypeFlagsNV
  , VkExternalMemoryHandleTypeFlagBitsNV
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_BIT_NV
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_OPAQUE_WIN32_KMT_BIT_NV
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_BIT_NV
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_D3D11_IMAGE_KMT_BIT_NV
  , VkExternalMemoryFeatureFlagsNV
  , VkExternalMemoryFeatureFlagBitsNV
  , pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV
  , pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV
  , pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV
  , VkExternalImageFormatPropertiesNV (..)
  , VkGetPhysicalDeviceExternalImageFormatPropertiesNV
  , vkFunGetPhysicalDeviceExternalImageFormatPropertiesNV
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlagBitsNV
import Vulkan.Types.Enum.VkExternalMemoryFeatureFlagsNV
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBitsNV
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV
import Vulkan.Types.Struct.VkExternalImageFormatPropertiesNV
import Vulkan.Types.Command.VkGetPhysicalDeviceExternalImageFormatPropertiesNV
import Vulkan.Types.VkFun



pattern VK_NV_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_NV_EXTERNAL_MEMORY_CAPABILITIES_SPEC_VERSION = 1

pattern VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME :: CString
pattern VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME <- (const False -> True)
  where
    VK_NV_EXTERNAL_MEMORY_CAPABILITIES_EXTENSION_NAME = Ptr ("VK_NV_external_memory_capabilities\0"##)

#else

module Vulkan.Ext.VK_NV_external_memory_capabilities where

#endif