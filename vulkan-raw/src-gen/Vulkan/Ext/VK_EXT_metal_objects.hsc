{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Ext.VK_EXT_metal_objects
  ( pattern VK_EXT_METAL_OBJECTS_SPEC_VERSION
  , pattern VK_EXT_METAL_OBJECTS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECT_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_OBJECTS_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_DEVICE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_COMMAND_QUEUE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_BUFFER_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMPORT_METAL_BUFFER_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_TEXTURE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMPORT_METAL_TEXTURE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_IO_SURFACE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMPORT_METAL_IO_SURFACE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_EXPORT_METAL_SHARED_EVENT_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_IMPORT_METAL_SHARED_EVENT_INFO_EXT
  , VkExportMetalObjectTypeFlagBitsEXT
  , pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_DEVICE_BIT_EXT
  , pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_COMMAND_QUEUE_BIT_EXT
  , pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_BUFFER_BIT_EXT
  , pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_TEXTURE_BIT_EXT
  , pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_IOSURFACE_BIT_EXT
  , pattern VK_EXPORT_METAL_OBJECT_TYPE_METAL_SHARED_EVENT_BIT_EXT
  , VkExportMetalObjectTypeFlagsEXT
  , VkExportMetalObjectCreateInfoEXT (..)
  , VkExportMetalObjectsInfoEXT (..)
  , VkExportMetalDeviceInfoEXT (..)
  , VkExportMetalCommandQueueInfoEXT (..)
  , VkExportMetalBufferInfoEXT (..)
  , VkImportMetalBufferInfoEXT (..)
  , VkExportMetalTextureInfoEXT (..)
  , VkImportMetalTextureInfoEXT (..)
  , VkExportMetalIOSurfaceInfoEXT (..)
  , VkImportMetalIOSurfaceInfoEXT (..)
  , VkExportMetalSharedEventInfoEXT (..)
  , VkImportMetalSharedEventInfoEXT (..)
  , MTLDevice_id
  , MTLCommandQueue_id
  , MTLBuffer_id
  , MTLTexture_id
  , MTLSharedEvent_id
  , IOSurfaceRef
  , VkExportMetalObjectsEXT
  , vkFunExportMetalObjectsEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkExportMetalObjectTypeFlagBitsEXT
import Vulkan.Types.Enum.VkExportMetalObjectTypeFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExportMetalBufferInfoEXT
import Vulkan.Types.Struct.VkExportMetalCommandQueueInfoEXT
import Vulkan.Types.Struct.VkExportMetalDeviceInfoEXT
import Vulkan.Types.Struct.VkExportMetalIOSurfaceInfoEXT
import Vulkan.Types.Struct.VkExportMetalObjectCreateInfoEXT
import Vulkan.Types.Struct.VkExportMetalObjectsInfoEXT
import Vulkan.Types.Struct.VkExportMetalSharedEventInfoEXT
import Vulkan.Types.Struct.VkExportMetalTextureInfoEXT
import Vulkan.Types.Struct.VkImportMetalBufferInfoEXT
import Vulkan.Types.Struct.VkImportMetalIOSurfaceInfoEXT
import Vulkan.Types.Struct.VkImportMetalSharedEventInfoEXT
import Vulkan.Types.Struct.VkImportMetalTextureInfoEXT
import Vulkan.Types.Command.VkExportMetalObjectsEXT
import Vulkan.Types.VkFun



pattern VK_EXT_METAL_OBJECTS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_METAL_OBJECTS_SPEC_VERSION = 1

pattern VK_EXT_METAL_OBJECTS_EXTENSION_NAME :: CString
pattern VK_EXT_METAL_OBJECTS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_METAL_OBJECTS_EXTENSION_NAME = Ptr ("VK_EXT_metal_objects\0"##)

#else

module Vulkan.Ext.VK_EXT_metal_objects where

#endif