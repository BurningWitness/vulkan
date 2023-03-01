{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Ext.VK_ANDROID_external_memory_android_hardware_buffer
  ( pattern VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_SPEC_VERSION
  , pattern VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_EXTENSION_NAME
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_ANDROID_HARDWARE_BUFFER_BIT_ANDROID
  , pattern VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_USAGE_ANDROID
  , pattern VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_PROPERTIES_ANDROID
  , pattern VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_ANDROID
  , pattern VK_STRUCTURE_TYPE_IMPORT_ANDROID_HARDWARE_BUFFER_INFO_ANDROID
  , pattern VK_STRUCTURE_TYPE_MEMORY_GET_ANDROID_HARDWARE_BUFFER_INFO_ANDROID
  , pattern VK_STRUCTURE_TYPE_EXTERNAL_FORMAT_ANDROID
  , VkAndroidHardwareBufferUsageANDROID (..)
  , VkAndroidHardwareBufferPropertiesANDROID (..)
  , VkAndroidHardwareBufferFormatPropertiesANDROID (..)
  , VkImportAndroidHardwareBufferInfoANDROID (..)
  , VkMemoryGetAndroidHardwareBufferInfoANDROID (..)
  , VkExternalFormatANDROID (..)
  , VkGetAndroidHardwareBufferPropertiesANDROID
  , vkFunGetAndroidHardwareBufferPropertiesANDROID
  , VkGetMemoryAndroidHardwareBufferANDROID
  , vkFunGetMemoryAndroidHardwareBufferANDROID
  , AHardwareBuffer
#if VK_KHR_format_feature_flags2
  , VkAndroidHardwareBufferFormatProperties2ANDROID (..)
  , pattern VK_STRUCTURE_TYPE_ANDROID_HARDWARE_BUFFER_FORMAT_PROPERTIES_2_ANDROID
#endif
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAndroidHardwareBufferFormatProperties2ANDROID
import Vulkan.Types.Struct.VkAndroidHardwareBufferFormatPropertiesANDROID
import Vulkan.Types.Struct.VkAndroidHardwareBufferPropertiesANDROID
import Vulkan.Types.Struct.VkAndroidHardwareBufferUsageANDROID
import Vulkan.Types.Struct.VkExternalFormatANDROID
import Vulkan.Types.Struct.VkImportAndroidHardwareBufferInfoANDROID
import Vulkan.Types.Struct.VkMemoryGetAndroidHardwareBufferInfoANDROID
import Vulkan.Types.Command.VkGetAndroidHardwareBufferPropertiesANDROID
import Vulkan.Types.Command.VkGetMemoryAndroidHardwareBufferANDROID
import Vulkan.Types.VkFun



pattern VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_SPEC_VERSION = 5

pattern VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_EXTENSION_NAME :: CString
pattern VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_EXTENSION_NAME <- (const False -> True)
  where
    VK_ANDROID_EXTERNAL_MEMORY_ANDROID_HARDWARE_BUFFER_EXTENSION_NAME = Ptr ("VK_ANDROID_external_memory_android_hardware_buffer\0"##)

#else

module Vulkan.Ext.VK_ANDROID_external_memory_android_hardware_buffer where

#endif