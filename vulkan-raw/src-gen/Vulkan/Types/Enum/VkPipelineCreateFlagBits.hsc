{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCreateFlagBits where

import Vulkan.Types.Base



-- | Note that the gap at bitpos 10 is unused, and can be reserved
type VkPipelineCreateFlagBits = VkFlags

pattern VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DISABLE_OPTIMIZATION_BIT = 1

pattern VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_ALLOW_DERIVATIVES_BIT = 2

pattern VK_PIPELINE_CREATE_DERIVATIVE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DERIVATIVE_BIT = 4

#if VK_VERSION_1_1 || (VK_KHR_device_group)
pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT = 8
#endif

#if VK_VERSION_1_1
pattern VK_PIPELINE_CREATE_DISPATCH_BASE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DISPATCH_BASE_BIT = 16
#endif

#if VK_VERSION_1_1 || (VK_KHR_device_group)
pattern VK_PIPELINE_CREATE_DISPATCH_BASE :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DISPATCH_BASE = 16
#endif

#if VK_VERSION_1_3 || (VK_EXT_pipeline_creation_cache_control)
pattern VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT = 256
#endif

#if VK_VERSION_1_3 || (VK_EXT_pipeline_creation_cache_control)
pattern VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT = 512
#endif

#if VK_KHR_dynamic_rendering && VK_KHR_fragment_shading_rate
pattern VK_PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RENDERING_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 2097152
#endif

#if VK_KHR_dynamic_rendering && VK_KHR_fragment_shading_rate
-- | Backwards-compatible alias containing a typo
pattern VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 2097152
#endif

#if VK_KHR_dynamic_rendering && VK_EXT_fragment_density_map
pattern VK_PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RENDERING_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT = 4194304
#endif

#if VK_KHR_dynamic_rendering && VK_EXT_fragment_density_map
-- | Backwards-compatible alias containing a typo
pattern VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_RASTERIZATION_STATE_CREATE_FRAGMENT_DENSITY_MAP_ATTACHMENT_BIT_EXT = 4194304
#endif

#if VK_KHR_device_group
pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_VIEW_INDEX_FROM_DEVICE_INDEX_BIT_KHR = 8
#endif

#if VK_KHR_device_group
pattern VK_PIPELINE_CREATE_DISPATCH_BASE_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DISPATCH_BASE_KHR = 16
#endif

#if VK_NV_ray_tracing
pattern VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DEFER_COMPILE_BIT_NV = 32
#endif

#if VK_KHR_pipeline_executable_properties
pattern VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_CAPTURE_STATISTICS_BIT_KHR = 64
#endif

#if VK_KHR_pipeline_executable_properties
pattern VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_CAPTURE_INTERNAL_REPRESENTATIONS_BIT_KHR = 128
#endif

#if VK_NV_device_generated_commands
pattern VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_INDIRECT_BINDABLE_BIT_NV = 262144
#endif

#if VK_KHR_pipeline_library
pattern VK_PIPELINE_CREATE_LIBRARY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_LIBRARY_BIT_KHR = 2048
#endif

#if VK_EXT_pipeline_creation_cache_control
pattern VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT = 256
#endif

#if VK_EXT_pipeline_creation_cache_control
pattern VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT = 512
#endif

#if VK_EXT_descriptor_buffer
pattern VK_PIPELINE_CREATE_DESCRIPTOR_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DESCRIPTOR_BUFFER_BIT_EXT = 536870912
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_PIPELINE_CREATE_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT = 8388608
#endif

#if VK_EXT_graphics_pipeline_library
pattern VK_PIPELINE_CREATE_LINK_TIME_OPTIMIZATION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_LINK_TIME_OPTIMIZATION_BIT_EXT = 1024
#endif

#if VK_NV_ray_tracing_motion_blur
pattern VK_PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_ALLOW_MOTION_BIT_NV = 1048576
#endif

#if VK_EXT_attachment_feedback_loop_layout
pattern VK_PIPELINE_CREATE_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_COLOR_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 33554432
#endif

#if VK_EXT_attachment_feedback_loop_layout
pattern VK_PIPELINE_CREATE_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_DEPTH_STENCIL_ATTACHMENT_FEEDBACK_LOOP_BIT_EXT = 67108864
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_ANY_HIT_SHADERS_BIT_KHR = 16384
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_CLOSEST_HIT_SHADERS_BIT_KHR = 32768
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_MISS_SHADERS_BIT_KHR = 65536
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_NO_NULL_INTERSECTION_SHADERS_BIT_KHR = 131072
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_SKIP_TRIANGLES_BIT_KHR = 4096
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_SKIP_AABBS_BIT_KHR = 8192
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_SHADER_GROUP_HANDLE_CAPTURE_REPLAY_BIT_KHR = 524288
#endif

#if VK_EXT_opacity_micromap
pattern VK_PIPELINE_CREATE_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_RAY_TRACING_OPACITY_MICROMAP_BIT_EXT = 16777216
#endif

#if VK_EXT_pipeline_protected_access
pattern VK_PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT_EXT = 134217728
#endif

#if VK_EXT_pipeline_protected_access
pattern VK_PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT_EXT = 1073741824
#endif