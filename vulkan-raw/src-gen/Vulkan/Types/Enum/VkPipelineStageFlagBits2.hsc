{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineStageFlagBits2 where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkPipelineStageFlagBits2 = VkFlags64
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_NONE :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_NONE = 0
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_NONE_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_NONE_KHR = VK_PIPELINE_STAGE_2_NONE
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT_KHR = VK_PIPELINE_STAGE_2_TOP_OF_PIPE_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT = 2
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT_KHR = VK_PIPELINE_STAGE_2_DRAW_INDIRECT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT = 4
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT_KHR = VK_PIPELINE_STAGE_2_VERTEX_INPUT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT = 8
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT_KHR = VK_PIPELINE_STAGE_2_VERTEX_SHADER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT = 16
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT_KHR = VK_PIPELINE_STAGE_2_TESSELLATION_CONTROL_SHADER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT = 32
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT_KHR = VK_PIPELINE_STAGE_2_TESSELLATION_EVALUATION_SHADER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT = 64
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT_KHR = VK_PIPELINE_STAGE_2_GEOMETRY_SHADER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT = 128
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT_KHR = VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT = 256
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT_KHR = VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT = 512
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT_KHR = VK_PIPELINE_STAGE_2_LATE_FRAGMENT_TESTS_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT = 1024
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT_KHR = VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT = 2048
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT_KHR = VK_PIPELINE_STAGE_2_COMPUTE_SHADER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT = 4096
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT_KHR = VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TRANSFER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TRANSFER_BIT = VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT_KHR
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_TRANSFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TRANSFER_BIT_KHR = VK_PIPELINE_STAGE_2_ALL_TRANSFER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT = 8192
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT_KHR = VK_PIPELINE_STAGE_2_BOTTOM_OF_PIPE_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_HOST_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_HOST_BIT = 16384
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_HOST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_HOST_BIT_KHR = VK_PIPELINE_STAGE_2_HOST_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT = 32768
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT_KHR = VK_PIPELINE_STAGE_2_ALL_GRAPHICS_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT = 65536
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT_KHR = VK_PIPELINE_STAGE_2_ALL_COMMANDS_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_COPY_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COPY_BIT = 4294967296
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_COPY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COPY_BIT_KHR = VK_PIPELINE_STAGE_2_COPY_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_RESOLVE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_RESOLVE_BIT = 8589934592
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_RESOLVE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_RESOLVE_BIT_KHR = VK_PIPELINE_STAGE_2_RESOLVE_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_BLIT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_BLIT_BIT = 17179869184
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_BLIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_BLIT_BIT_KHR = VK_PIPELINE_STAGE_2_BLIT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_CLEAR_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_CLEAR_BIT = 34359738368
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_CLEAR_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_CLEAR_BIT_KHR = VK_PIPELINE_STAGE_2_CLEAR_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT = 68719476736
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT_KHR = VK_PIPELINE_STAGE_2_INDEX_INPUT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT = 137438953472
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT_KHR = VK_PIPELINE_STAGE_2_VERTEX_ATTRIBUTE_INPUT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT = 274877906944
#endif

#if VK_VERSION_1_3
pattern VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT_KHR = VK_PIPELINE_STAGE_2_PRE_RASTERIZATION_SHADERS_BIT
#endif

#if VK_KHR_video_decode_queue
pattern VK_PIPELINE_STAGE_2_VIDEO_DECODE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VIDEO_DECODE_BIT_KHR = 67108864
#endif

#if VK_KHR_video_encode_queue
pattern VK_PIPELINE_STAGE_2_VIDEO_ENCODE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_VIDEO_ENCODE_BIT_KHR = 134217728
#endif

#if VK_KHR_synchronization2 && VK_EXT_transform_feedback
pattern VK_PIPELINE_STAGE_2_TRANSFORM_FEEDBACK_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TRANSFORM_FEEDBACK_BIT_EXT = 16777216
#endif

#if VK_KHR_synchronization2 && VK_EXT_conditional_rendering
-- | A pipeline stage for conditional rendering predicate fetch
pattern VK_PIPELINE_STAGE_2_CONDITIONAL_RENDERING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_CONDITIONAL_RENDERING_BIT_EXT = 262144
#endif

#if VK_KHR_synchronization2 && VK_NV_device_generated_commands
pattern VK_PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_COMMAND_PREPROCESS_BIT_NV = 131072
#endif

#if VK_KHR_synchronization2 && VK_KHR_fragment_shading_rate && VK_NV_shading_rate_image
pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 4194304
#endif

#if VK_KHR_synchronization2 && VK_NV_shading_rate_image
pattern VK_PIPELINE_STAGE_2_SHADING_RATE_IMAGE_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_SHADING_RATE_IMAGE_BIT_NV = VK_PIPELINE_STAGE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR
#endif

#if VK_KHR_synchronization2 && VK_KHR_acceleration_structure && VK_NV_ray_tracing
pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 33554432
#endif

#if VK_KHR_synchronization2 && VK_KHR_ray_tracing_pipeline && VK_NV_ray_tracing
pattern VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR = 2097152
#endif

#if VK_KHR_synchronization2 && VK_NV_ray_tracing
pattern VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_NV = VK_PIPELINE_STAGE_2_RAY_TRACING_SHADER_BIT_KHR
#endif

#if VK_KHR_synchronization2 && VK_NV_ray_tracing
pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_NV = VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_BUILD_BIT_KHR
#endif

#if VK_KHR_synchronization2 && VK_EXT_fragment_density_map
pattern VK_PIPELINE_STAGE_2_FRAGMENT_DENSITY_PROCESS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 8388608
#endif

#if VK_KHR_synchronization2 && VK_NV_mesh_shader
pattern VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_NV = VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_EXT
#endif

#if VK_KHR_synchronization2 && VK_NV_mesh_shader
pattern VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_NV = VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_EXT
#endif

#if VK_KHR_synchronization2 && VK_EXT_mesh_shader
pattern VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_TASK_SHADER_BIT_EXT = 524288
#endif

#if VK_KHR_synchronization2 && VK_EXT_mesh_shader
pattern VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_MESH_SHADER_BIT_EXT = 1048576
#endif

#if VK_HUAWEI_subpass_shading
pattern VK_PIPELINE_STAGE_2_SUBPASS_SHADING_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_SUBPASS_SHADING_BIT_HUAWEI = 549755813888
#endif

#if VK_HUAWEI_invocation_mask
pattern VK_PIPELINE_STAGE_2_INVOCATION_MASK_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_INVOCATION_MASK_BIT_HUAWEI = 1099511627776
#endif

#if VK_KHR_ray_tracing_maintenance1 && VK_KHR_synchronization2
pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_COPY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_ACCELERATION_STRUCTURE_COPY_BIT_KHR = 268435456
#endif

#if VK_EXT_opacity_micromap
pattern VK_PIPELINE_STAGE_2_MICROMAP_BUILD_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_MICROMAP_BUILD_BIT_EXT = 1073741824
#endif

#if VK_HUAWEI_cluster_culling_shader
pattern VK_PIPELINE_STAGE_2_CLUSTER_CULLING_SHADER_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_CLUSTER_CULLING_SHADER_BIT_HUAWEI = 2199023255552
#endif

#if VK_NV_optical_flow
pattern VK_PIPELINE_STAGE_2_OPTICAL_FLOW_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_2_OPTICAL_FLOW_BIT_NV = 536870912
#endif