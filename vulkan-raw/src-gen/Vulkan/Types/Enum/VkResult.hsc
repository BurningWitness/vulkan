{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkResult where

import Data.Int



-- | API result codes
type VkResult = #{type int}

-- | Command completed successfully
pattern VK_SUCCESS :: (Eq a, Num a) => a
pattern VK_SUCCESS = 0

-- | A fence or query has not yet completed
pattern VK_NOT_READY :: (Eq a, Num a) => a
pattern VK_NOT_READY = 1

-- | A wait operation has not completed in the specified time
pattern VK_TIMEOUT :: (Eq a, Num a) => a
pattern VK_TIMEOUT = 2

-- | An event is signaled
pattern VK_EVENT_SET :: (Eq a, Num a) => a
pattern VK_EVENT_SET = 3

-- | An event is unsignaled
pattern VK_EVENT_RESET :: (Eq a, Num a) => a
pattern VK_EVENT_RESET = 4

-- | A return array was too small for the result
pattern VK_INCOMPLETE :: (Eq a, Num a) => a
pattern VK_INCOMPLETE = 5

-- | A host memory allocation has failed
pattern VK_ERROR_OUT_OF_HOST_MEMORY :: (Eq a, Num a) => a
pattern VK_ERROR_OUT_OF_HOST_MEMORY = -1

-- | A device memory allocation has failed
pattern VK_ERROR_OUT_OF_DEVICE_MEMORY :: (Eq a, Num a) => a
pattern VK_ERROR_OUT_OF_DEVICE_MEMORY = -2

-- | Initialization of an object has failed
pattern VK_ERROR_INITIALIZATION_FAILED :: (Eq a, Num a) => a
pattern VK_ERROR_INITIALIZATION_FAILED = -3

-- | The logical device has been lost. See <<devsandqueues-lost-device>>
pattern VK_ERROR_DEVICE_LOST :: (Eq a, Num a) => a
pattern VK_ERROR_DEVICE_LOST = -4

-- | Mapping of a memory object has failed
pattern VK_ERROR_MEMORY_MAP_FAILED :: (Eq a, Num a) => a
pattern VK_ERROR_MEMORY_MAP_FAILED = -5

-- | Layer specified does not exist
pattern VK_ERROR_LAYER_NOT_PRESENT :: (Eq a, Num a) => a
pattern VK_ERROR_LAYER_NOT_PRESENT = -6

-- | Extension specified does not exist
pattern VK_ERROR_EXTENSION_NOT_PRESENT :: (Eq a, Num a) => a
pattern VK_ERROR_EXTENSION_NOT_PRESENT = -7

-- | Requested feature is not available on this device
pattern VK_ERROR_FEATURE_NOT_PRESENT :: (Eq a, Num a) => a
pattern VK_ERROR_FEATURE_NOT_PRESENT = -8

-- | Unable to find a Vulkan driver
pattern VK_ERROR_INCOMPATIBLE_DRIVER :: (Eq a, Num a) => a
pattern VK_ERROR_INCOMPATIBLE_DRIVER = -9

-- | Too many objects of the type have already been created
pattern VK_ERROR_TOO_MANY_OBJECTS :: (Eq a, Num a) => a
pattern VK_ERROR_TOO_MANY_OBJECTS = -10

-- | Requested format is not supported on this device
pattern VK_ERROR_FORMAT_NOT_SUPPORTED :: (Eq a, Num a) => a
pattern VK_ERROR_FORMAT_NOT_SUPPORTED = -11

-- | A requested pool allocation has failed due to fragmentation of the pool's memory
pattern VK_ERROR_FRAGMENTED_POOL :: (Eq a, Num a) => a
pattern VK_ERROR_FRAGMENTED_POOL = -12

-- | An unknown error has occurred, due to an implementation or application bug
pattern VK_ERROR_UNKNOWN :: (Eq a, Num a) => a
pattern VK_ERROR_UNKNOWN = -13

#if VK_VERSION_1_1 || (VK_KHR_maintenance1)
pattern VK_ERROR_OUT_OF_POOL_MEMORY :: (Eq a, Num a) => a
pattern VK_ERROR_OUT_OF_POOL_MEMORY = -1000069000
#endif

#if VK_VERSION_1_1 || (VK_KHR_external_memory)
pattern VK_ERROR_INVALID_EXTERNAL_HANDLE :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_EXTERNAL_HANDLE = -1000072003
#endif

#if VK_VERSION_1_2 || (VK_EXT_descriptor_indexing)
pattern VK_ERROR_FRAGMENTATION :: (Eq a, Num a) => a
pattern VK_ERROR_FRAGMENTATION = -1000161000
#endif

#if VK_VERSION_1_2 || (VK_EXT_buffer_device_address) || (VK_KHR_buffer_device_address)
pattern VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS = -1000257000
#endif

#if VK_VERSION_1_3 || (VK_EXT_pipeline_creation_cache_control)
pattern VK_PIPELINE_COMPILE_REQUIRED :: (Eq a, Num a) => a
pattern VK_PIPELINE_COMPILE_REQUIRED = 1000297000
#endif

#if VK_KHR_surface
pattern VK_ERROR_SURFACE_LOST_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_SURFACE_LOST_KHR = -1000000000
#endif

#if VK_KHR_surface
pattern VK_ERROR_NATIVE_WINDOW_IN_USE_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_NATIVE_WINDOW_IN_USE_KHR = -1000000001
#endif

#if VK_KHR_swapchain
pattern VK_SUBOPTIMAL_KHR :: (Eq a, Num a) => a
pattern VK_SUBOPTIMAL_KHR = 1000001003
#endif

#if VK_KHR_swapchain
pattern VK_ERROR_OUT_OF_DATE_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_OUT_OF_DATE_KHR = -1000001004
#endif

#if VK_KHR_display_swapchain
pattern VK_ERROR_INCOMPATIBLE_DISPLAY_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_INCOMPATIBLE_DISPLAY_KHR = -1000003001
#endif

#if VK_EXT_debug_report
pattern VK_ERROR_VALIDATION_FAILED_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_VALIDATION_FAILED_EXT = -1000011001
#endif

#if VK_NV_glsl_shader
pattern VK_ERROR_INVALID_SHADER_NV :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_SHADER_NV = -1000012000
#endif

#if VK_KHR_video_queue
pattern VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_IMAGE_USAGE_NOT_SUPPORTED_KHR = -1000023000
#endif

#if VK_KHR_video_queue
pattern VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_VIDEO_PICTURE_LAYOUT_NOT_SUPPORTED_KHR = -1000023001
#endif

#if VK_KHR_video_queue
pattern VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_VIDEO_PROFILE_OPERATION_NOT_SUPPORTED_KHR = -1000023002
#endif

#if VK_KHR_video_queue
pattern VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_VIDEO_PROFILE_FORMAT_NOT_SUPPORTED_KHR = -1000023003
#endif

#if VK_KHR_video_queue
pattern VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_VIDEO_PROFILE_CODEC_NOT_SUPPORTED_KHR = -1000023004
#endif

#if VK_KHR_video_queue
pattern VK_ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_VIDEO_STD_VERSION_NOT_SUPPORTED_KHR = -1000023005
#endif

#if VK_KHR_maintenance1
pattern VK_ERROR_OUT_OF_POOL_MEMORY_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_OUT_OF_POOL_MEMORY_KHR = -1000069000
#endif

#if VK_KHR_external_memory
pattern VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_EXTERNAL_HANDLE_KHR = -1000072003
#endif

#if VK_EXT_image_drm_format_modifier
pattern VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_DRM_FORMAT_MODIFIER_PLANE_LAYOUT_EXT = -1000158000
#endif

#if VK_EXT_descriptor_indexing
pattern VK_ERROR_FRAGMENTATION_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_FRAGMENTATION_EXT = -1000161000
#endif

#if VK_EXT_global_priority
pattern VK_ERROR_NOT_PERMITTED_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_NOT_PERMITTED_EXT = -1000174001
#endif

#if VK_KHR_global_priority
pattern VK_ERROR_NOT_PERMITTED_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_NOT_PERMITTED_KHR = -1000174001
#endif

#if VK_EXT_buffer_device_address
pattern VK_ERROR_INVALID_DEVICE_ADDRESS_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_DEVICE_ADDRESS_EXT = -1000257000
#endif

#if VK_EXT_full_screen_exclusive
pattern VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_FULL_SCREEN_EXCLUSIVE_MODE_LOST_EXT = -1000255000
#endif

#if VK_KHR_buffer_device_address
pattern VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR :: (Eq a, Num a) => a
pattern VK_ERROR_INVALID_OPAQUE_CAPTURE_ADDRESS_KHR = -1000257000
#endif

#if VK_KHR_deferred_host_operations
pattern VK_THREAD_IDLE_KHR :: (Eq a, Num a) => a
pattern VK_THREAD_IDLE_KHR = 1000268000
#endif

#if VK_KHR_deferred_host_operations
pattern VK_THREAD_DONE_KHR :: (Eq a, Num a) => a
pattern VK_THREAD_DONE_KHR = 1000268001
#endif

#if VK_KHR_deferred_host_operations
pattern VK_OPERATION_DEFERRED_KHR :: (Eq a, Num a) => a
pattern VK_OPERATION_DEFERRED_KHR = 1000268002
#endif

#if VK_KHR_deferred_host_operations
pattern VK_OPERATION_NOT_DEFERRED_KHR :: (Eq a, Num a) => a
pattern VK_OPERATION_NOT_DEFERRED_KHR = 1000268003
#endif

#if VK_EXT_pipeline_creation_cache_control
pattern VK_PIPELINE_COMPILE_REQUIRED_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_COMPILE_REQUIRED_EXT = 1000297000
#endif

#if VK_EXT_pipeline_creation_cache_control
pattern VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT = 1000297000
#endif

#if VK_EXT_image_compression_control
pattern VK_ERROR_COMPRESSION_EXHAUSTED_EXT :: (Eq a, Num a) => a
pattern VK_ERROR_COMPRESSION_EXHAUSTED_EXT = -1000338000
#endif