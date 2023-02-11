{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_device_memory_report

module Vulkan.Ext.VK_EXT_device_memory_report
  ( pattern VK_EXT_DEVICE_MEMORY_REPORT_SPEC_VERSION
  , pattern VK_EXT_DEVICE_MEMORY_REPORT_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_DEVICE_MEMORY_REPORT_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_DEVICE_MEMORY_REPORT_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_DEVICE_MEMORY_REPORT_CALLBACK_DATA_EXT
  , VkPhysicalDeviceDeviceMemoryReportFeaturesEXT (..)
  , VkDeviceDeviceMemoryReportCreateInfoEXT (..)
  , VkDeviceMemoryReportCallbackDataEXT (..)
  , VkDeviceMemoryReportFlagsEXT
  , VkDeviceMemoryReportEventTypeEXT
  , pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT
  , pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT
  , pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT
  , pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT
  , pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT
  , PFN_vkDeviceMemoryReportCallbackEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkDeviceMemoryReportEventTypeEXT
import Vulkan.Types.Enum.VkDeviceMemoryReportFlagsEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.FuncPointer
import Vulkan.Types.Struct.VkDeviceDeviceMemoryReportCreateInfoEXT
import Vulkan.Types.Struct.VkDeviceMemoryReportCallbackDataEXT
import Vulkan.Types.Struct.VkPhysicalDeviceDeviceMemoryReportFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_DEVICE_MEMORY_REPORT_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_DEVICE_MEMORY_REPORT_SPEC_VERSION = 2

pattern VK_EXT_DEVICE_MEMORY_REPORT_EXTENSION_NAME :: CString
pattern VK_EXT_DEVICE_MEMORY_REPORT_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_DEVICE_MEMORY_REPORT_EXTENSION_NAME = Ptr ("VK_EXT_device_memory_report\0"##)

#else

module Vulkan.Ext.VK_EXT_device_memory_report where

#endif