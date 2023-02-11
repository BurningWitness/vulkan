{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkObjectType where

import Data.Int



-- | Enums to track objects of various types - also see objtypeenum attributes on type tags
type VkObjectType = #{type int}

pattern VK_OBJECT_TYPE_UNKNOWN :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_UNKNOWN = 0

pattern VK_OBJECT_TYPE_INSTANCE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_INSTANCE = 1

pattern VK_OBJECT_TYPE_PHYSICAL_DEVICE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PHYSICAL_DEVICE = 2

pattern VK_OBJECT_TYPE_DEVICE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DEVICE = 3

pattern VK_OBJECT_TYPE_QUEUE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_QUEUE = 4

pattern VK_OBJECT_TYPE_SEMAPHORE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SEMAPHORE = 5

pattern VK_OBJECT_TYPE_COMMAND_BUFFER :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_COMMAND_BUFFER = 6

pattern VK_OBJECT_TYPE_FENCE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_FENCE = 7

pattern VK_OBJECT_TYPE_DEVICE_MEMORY :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DEVICE_MEMORY = 8

pattern VK_OBJECT_TYPE_BUFFER :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_BUFFER = 9

pattern VK_OBJECT_TYPE_IMAGE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_IMAGE = 10

pattern VK_OBJECT_TYPE_EVENT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_EVENT = 11

pattern VK_OBJECT_TYPE_QUERY_POOL :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_QUERY_POOL = 12

pattern VK_OBJECT_TYPE_BUFFER_VIEW :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_BUFFER_VIEW = 13

pattern VK_OBJECT_TYPE_IMAGE_VIEW :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_IMAGE_VIEW = 14

pattern VK_OBJECT_TYPE_SHADER_MODULE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SHADER_MODULE = 15

pattern VK_OBJECT_TYPE_PIPELINE_CACHE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PIPELINE_CACHE = 16

pattern VK_OBJECT_TYPE_PIPELINE_LAYOUT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PIPELINE_LAYOUT = 17

pattern VK_OBJECT_TYPE_RENDER_PASS :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_RENDER_PASS = 18

pattern VK_OBJECT_TYPE_PIPELINE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PIPELINE = 19

pattern VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DESCRIPTOR_SET_LAYOUT = 20

pattern VK_OBJECT_TYPE_SAMPLER :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SAMPLER = 21

pattern VK_OBJECT_TYPE_DESCRIPTOR_POOL :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DESCRIPTOR_POOL = 22

pattern VK_OBJECT_TYPE_DESCRIPTOR_SET :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DESCRIPTOR_SET = 23

pattern VK_OBJECT_TYPE_FRAMEBUFFER :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_FRAMEBUFFER = 24

pattern VK_OBJECT_TYPE_COMMAND_POOL :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_COMMAND_POOL = 25

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION = 1000156000
#endif

#if VK_VERSION_1_1 || (VK_KHR_descriptor_update_template)
pattern VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE = 1000085000
#endif

#if VK_VERSION_1_3 || (VK_EXT_private_data)
pattern VK_OBJECT_TYPE_PRIVATE_DATA_SLOT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PRIVATE_DATA_SLOT = 1000295000
#endif

#if VK_KHR_surface
pattern VK_OBJECT_TYPE_SURFACE_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SURFACE_KHR = 1000000000
#endif

#if VK_KHR_swapchain
pattern VK_OBJECT_TYPE_SWAPCHAIN_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SWAPCHAIN_KHR = 1000001000
#endif

#if VK_KHR_display
pattern VK_OBJECT_TYPE_DISPLAY_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DISPLAY_KHR = 1000002000
#endif

#if VK_KHR_display
pattern VK_OBJECT_TYPE_DISPLAY_MODE_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DISPLAY_MODE_KHR = 1000002001
#endif

#if VK_EXT_debug_report
pattern VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DEBUG_REPORT_CALLBACK_EXT = 1000011000
#endif

#if VK_KHR_video_queue
-- | VkVideoSessionKHR
pattern VK_OBJECT_TYPE_VIDEO_SESSION_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_VIDEO_SESSION_KHR = 1000023000
#endif

#if VK_KHR_video_queue
-- | VkVideoSessionParametersKHR
pattern VK_OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_VIDEO_SESSION_PARAMETERS_KHR = 1000023001
#endif

#if VK_NVX_binary_import
pattern VK_OBJECT_TYPE_CU_MODULE_NVX :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_CU_MODULE_NVX = 1000029000
#endif

#if VK_NVX_binary_import
pattern VK_OBJECT_TYPE_CU_FUNCTION_NVX :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_CU_FUNCTION_NVX = 1000029001
#endif

#if VK_KHR_descriptor_update_template
pattern VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE_KHR = VK_OBJECT_TYPE_DESCRIPTOR_UPDATE_TEMPLATE
#endif

#if VK_EXT_debug_utils
pattern VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DEBUG_UTILS_MESSENGER_EXT = 1000128000
#endif

#if VK_KHR_acceleration_structure
pattern VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_KHR = 1000150000
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION_KHR = VK_OBJECT_TYPE_SAMPLER_YCBCR_CONVERSION
#endif

#if VK_EXT_validation_cache
pattern VK_OBJECT_TYPE_VALIDATION_CACHE_EXT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_VALIDATION_CACHE_EXT = 1000160000
#endif

#if VK_NV_ray_tracing
pattern VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_ACCELERATION_STRUCTURE_NV = 1000165000
#endif

#if VK_INTEL_performance_query
pattern VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PERFORMANCE_CONFIGURATION_INTEL = 1000210000
#endif

#if VK_KHR_deferred_host_operations
pattern VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_DEFERRED_OPERATION_KHR = 1000268000
#endif

#if VK_NV_device_generated_commands
pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_INDIRECT_COMMANDS_LAYOUT_NV = 1000277000
#endif

#if VK_EXT_private_data
pattern VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_PRIVATE_DATA_SLOT_EXT = VK_OBJECT_TYPE_PRIVATE_DATA_SLOT
#endif

#if VK_FUCHSIA_buffer_collection
-- | VkBufferCollectionFUCHSIA
pattern VK_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_BUFFER_COLLECTION_FUCHSIA = 1000366000
#endif

#if VK_EXT_opacity_micromap
pattern VK_OBJECT_TYPE_MICROMAP_EXT :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_MICROMAP_EXT = 1000396000
#endif

#if VK_NV_optical_flow
pattern VK_OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV :: (Eq a, Num a) => a
pattern VK_OBJECT_TYPE_OPTICAL_FLOW_SESSION_NV = 1000464000
#endif