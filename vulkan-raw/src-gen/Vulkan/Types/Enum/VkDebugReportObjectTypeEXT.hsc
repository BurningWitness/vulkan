{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDebugReportObjectTypeEXT where

import Data.Int



#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
type VkDebugReportObjectTypeEXT = #{type int}
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_UNKNOWN_EXT = 0
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_INSTANCE_EXT = 1
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PHYSICAL_DEVICE_EXT = 2
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_EXT = 3
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_QUEUE_EXT = 4
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SEMAPHORE_EXT = 5
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_BUFFER_EXT = 6
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_FENCE_EXT = 7
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEVICE_MEMORY_EXT = 8
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_EXT = 9
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_EXT = 10
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_EVENT_EXT = 11
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_QUERY_POOL_EXT = 12
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_VIEW_EXT = 13
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_IMAGE_VIEW_EXT = 14
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SHADER_MODULE_EXT = 15
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_CACHE_EXT = 16
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_LAYOUT_EXT = 17
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_RENDER_PASS_EXT = 18
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_PIPELINE_EXT = 19
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT_EXT = 20
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_EXT = 21
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_POOL_EXT = 22
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_SET_EXT = 23
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_FRAMEBUFFER_EXT = 24
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_COMMAND_POOL_EXT = 25
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SURFACE_KHR_EXT = 26
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SWAPCHAIN_KHR_EXT = 27
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT_EXT = 28
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
-- | Backwards-compatible alias containing a typo
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DEBUG_REPORT_EXT = 28
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_KHR_EXT = 29
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DISPLAY_MODE_KHR_EXT = 30
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT_EXT = 33
#endif

#if (VK_EXT_debug_marker) || (VK_EXT_debug_report)
-- | Backwards-compatible alias containing a typo
pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_VALIDATION_CACHE_EXT = 33
#endif

#if (VK_EXT_debug_report) || (VK_KHR_sampler_ycbcr_conversion && VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_EXT = 1000156000
#endif

#if (VK_EXT_debug_report) || (VK_KHR_descriptor_update_template && VK_EXT_debug_report)
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_EXT = 1000085000
#endif

#if VK_NVX_binary_import
pattern VK_DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_CU_MODULE_NVX_EXT = 1000029000
#endif

#if VK_NVX_binary_import
pattern VK_DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_CU_FUNCTION_NVX_EXT = 1000029001
#endif

#if VK_KHR_descriptor_update_template && VK_EXT_debug_report
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR_EXT = 1000085000
#endif

#if VK_KHR_acceleration_structure
pattern VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR_EXT = 1000150000
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR_EXT = 1000156000
#endif

#if VK_NV_ray_tracing
pattern VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV_EXT = 1000165000
#endif

#if VK_FUCHSIA_buffer_collection
pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA_EXT :: (Eq a, Num a) => a
pattern VK_DEBUG_REPORT_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA_EXT = 1000366000
#endif