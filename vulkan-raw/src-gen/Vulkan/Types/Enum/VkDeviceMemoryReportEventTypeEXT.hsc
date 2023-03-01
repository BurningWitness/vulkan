{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDeviceMemoryReportEventTypeEXT where

import Data.Int



#if VK_EXT_device_memory_report
type VkDeviceMemoryReportEventTypeEXT = #{type int}
#endif

#if VK_EXT_device_memory_report
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATE_EXT = 0
#endif

#if VK_EXT_device_memory_report
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_FREE_EXT = 1
#endif

#if VK_EXT_device_memory_report
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_IMPORT_EXT = 2
#endif

#if VK_EXT_device_memory_report
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_UNIMPORT_EXT = 3
#endif

#if VK_EXT_device_memory_report
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT :: (Eq a, Num a) => a
pattern VK_DEVICE_MEMORY_REPORT_EVENT_TYPE_ALLOCATION_FAILED_EXT = 4
#endif