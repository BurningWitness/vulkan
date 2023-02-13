{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineStageFlagBits where

import Vulkan.Types.Base



type VkPipelineStageFlagBits = VkFlags

-- | Before subsequent commands are processed
pattern VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT = 1

-- | Draw/DispatchIndirect command fetch
pattern VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_DRAW_INDIRECT_BIT = 2

-- | Vertex/index fetch
pattern VK_PIPELINE_STAGE_VERTEX_INPUT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_VERTEX_INPUT_BIT = 4

-- | Vertex shading
pattern VK_PIPELINE_STAGE_VERTEX_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_VERTEX_SHADER_BIT = 8

-- | Tessellation control shading
pattern VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TESSELLATION_CONTROL_SHADER_BIT = 16

-- | Tessellation evaluation shading
pattern VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TESSELLATION_EVALUATION_SHADER_BIT = 32

-- | Geometry shading
pattern VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_GEOMETRY_SHADER_BIT = 64

-- | Fragment shading
pattern VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT = 128

-- | Early fragment (depth and stencil) tests
pattern VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT = 256

-- | Late fragment (depth and stencil) tests
pattern VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_LATE_FRAGMENT_TESTS_BIT = 512

-- | Color attachment writes
pattern VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT = 1024

-- | Compute shading
pattern VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_COMPUTE_SHADER_BIT = 2048

-- | Transfer/copy operations
pattern VK_PIPELINE_STAGE_TRANSFER_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TRANSFER_BIT = 4096

-- | After previous commands have completed
pattern VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT = 8192

-- | Indicates host (CPU) is a source/sink of the dependency
pattern VK_PIPELINE_STAGE_HOST_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_HOST_BIT = 16384

-- | All stages of the graphics pipeline
pattern VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_ALL_GRAPHICS_BIT = 32768

-- | All stages supported on the queue
pattern VK_PIPELINE_STAGE_ALL_COMMANDS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_ALL_COMMANDS_BIT = 65536

#if VK_VERSION_1_3 || (VK_KHR_synchronization2)
pattern VK_PIPELINE_STAGE_NONE :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_NONE = 0
#endif

#if VK_EXT_transform_feedback
pattern VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TRANSFORM_FEEDBACK_BIT_EXT = 16777216
#endif

#if VK_EXT_conditional_rendering
-- | A pipeline stage for conditional rendering predicate fetch
pattern VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_CONDITIONAL_RENDERING_BIT_EXT = 262144
#endif

#if (VK_KHR_acceleration_structure) || (VK_NV_ray_tracing)
pattern VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_KHR = 33554432
#endif

#if VK_NV_shading_rate_image
pattern VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_SHADING_RATE_IMAGE_BIT_NV = 4194304
#endif

#if VK_NV_ray_tracing
pattern VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_NV = 2097152
#endif

#if VK_NV_ray_tracing
pattern VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_ACCELERATION_STRUCTURE_BUILD_BIT_NV = 33554432
#endif

#if VK_NV_mesh_shader
pattern VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TASK_SHADER_BIT_NV = 524288
#endif

#if VK_NV_mesh_shader
pattern VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_MESH_SHADER_BIT_NV = 1048576
#endif

#if VK_EXT_fragment_density_map
pattern VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_FRAGMENT_DENSITY_PROCESS_BIT_EXT = 8388608
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 4194304
#endif

#if VK_NV_device_generated_commands
pattern VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_COMMAND_PREPROCESS_BIT_NV = 131072
#endif

#if VK_KHR_synchronization2
pattern VK_PIPELINE_STAGE_NONE_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_NONE_KHR = 0
#endif

#if VK_EXT_mesh_shader
pattern VK_PIPELINE_STAGE_TASK_SHADER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_TASK_SHADER_BIT_EXT = 524288
#endif

#if VK_EXT_mesh_shader
pattern VK_PIPELINE_STAGE_MESH_SHADER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_MESH_SHADER_BIT_EXT = 1048576
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_STAGE_RAY_TRACING_SHADER_BIT_KHR = 2097152
#endif