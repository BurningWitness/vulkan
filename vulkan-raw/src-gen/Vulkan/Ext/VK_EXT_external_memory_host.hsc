{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_external_memory_host

module Vulkan.Ext.VK_EXT_external_memory_host
  ( pattern VK_EXT_EXTERNAL_MEMORY_HOST_SPEC_VERSION
  , pattern VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_IMPORT_MEMORY_HOST_POINTER_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_MEMORY_HOST_POINTER_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_EXTERNAL_MEMORY_HOST_PROPERTIES_EXT
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_ALLOCATION_BIT_EXT
  , pattern VK_EXTERNAL_MEMORY_HANDLE_TYPE_HOST_MAPPED_FOREIGN_MEMORY_BIT_EXT
  , VkImportMemoryHostPointerInfoEXT (..)
  , VkMemoryHostPointerPropertiesEXT (..)
  , VkPhysicalDeviceExternalMemoryHostPropertiesEXT (..)
  , VkGetMemoryHostPointerPropertiesEXT
  , vkFunGetMemoryHostPointerPropertiesEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImportMemoryHostPointerInfoEXT
import Vulkan.Types.Struct.VkMemoryHostPointerPropertiesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceExternalMemoryHostPropertiesEXT
import Vulkan.Types.Command.VkGetMemoryHostPointerPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_EXTERNAL_MEMORY_HOST_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_EXTERNAL_MEMORY_HOST_SPEC_VERSION = 1

pattern VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME :: CString
pattern VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_EXTERNAL_MEMORY_HOST_EXTENSION_NAME = Ptr ("VK_EXT_external_memory_host\0"##)

#else

module Vulkan.Ext.VK_EXT_external_memory_host where

#endif