{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccessFlagBits2 where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkAccessFlagBits2 = VkFlags64
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_NONE :: (Eq a, Num a) => a
pattern VK_ACCESS_2_NONE = 0
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_NONE_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_NONE_KHR = 0
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INDIRECT_COMMAND_READ_BIT_KHR = 1
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_INDEX_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INDEX_READ_BIT = 2
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_INDEX_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INDEX_READ_BIT_KHR = 2
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT = 4
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_VERTEX_ATTRIBUTE_READ_BIT_KHR = 4
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_UNIFORM_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_UNIFORM_READ_BIT = 8
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_UNIFORM_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_UNIFORM_READ_BIT_KHR = 8
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT = 16
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INPUT_ATTACHMENT_READ_BIT_KHR = 16
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_READ_BIT = 32
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_READ_BIT_KHR = 32
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_WRITE_BIT = 64
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_WRITE_BIT_KHR = 64
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT = 128
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_BIT_KHR = 128
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT = 256
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT_KHR = 256
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 512
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_READ_BIT_KHR = 512
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 1024
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT_KHR = 1024
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_TRANSFER_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFER_READ_BIT = 2048
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_TRANSFER_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFER_READ_BIT_KHR = 2048
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_TRANSFER_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFER_WRITE_BIT = 4096
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_TRANSFER_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFER_WRITE_BIT_KHR = 4096
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_HOST_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_HOST_READ_BIT = 8192
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_HOST_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_HOST_READ_BIT_KHR = 8192
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_HOST_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_HOST_WRITE_BIT = 16384
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_HOST_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_HOST_WRITE_BIT_KHR = 16384
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_MEMORY_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_MEMORY_READ_BIT = 32768
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_MEMORY_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_MEMORY_READ_BIT_KHR = 32768
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_MEMORY_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_MEMORY_WRITE_BIT = 65536
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_MEMORY_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_MEMORY_WRITE_BIT_KHR = 65536
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_SAMPLED_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_SAMPLED_READ_BIT = 4294967296
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_SAMPLED_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_SAMPLED_READ_BIT_KHR = 4294967296
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_STORAGE_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_STORAGE_READ_BIT = 8589934592
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_STORAGE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_STORAGE_READ_BIT_KHR = 8589934592
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT = 17179869184
#endif

#if VK_VERSION_1_3
pattern VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_STORAGE_WRITE_BIT_KHR = 17179869184
#endif

#if VK_KHR_video_decode_queue
pattern VK_ACCESS_2_VIDEO_DECODE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_VIDEO_DECODE_READ_BIT_KHR = 34359738368
#endif

#if VK_KHR_video_decode_queue
pattern VK_ACCESS_2_VIDEO_DECODE_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_VIDEO_DECODE_WRITE_BIT_KHR = 68719476736
#endif

#if VK_KHR_video_encode_queue
pattern VK_ACCESS_2_VIDEO_ENCODE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_VIDEO_ENCODE_READ_BIT_KHR = 137438953472
#endif

#if VK_KHR_video_encode_queue
pattern VK_ACCESS_2_VIDEO_ENCODE_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_VIDEO_ENCODE_WRITE_BIT_KHR = 274877906944
#endif

#if VK_KHR_synchronization2 && VK_EXT_transform_feedback
pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_WRITE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 33554432
#endif

#if VK_KHR_synchronization2 && VK_EXT_transform_feedback
pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 67108864
#endif

#if VK_KHR_synchronization2 && VK_EXT_transform_feedback
pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 134217728
#endif

#if VK_KHR_synchronization2 && VK_EXT_conditional_rendering
-- | read access flag for reading conditional rendering predicate
pattern VK_ACCESS_2_CONDITIONAL_RENDERING_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_CONDITIONAL_RENDERING_READ_BIT_EXT = 1048576
#endif

#if VK_KHR_synchronization2 && VK_NV_device_generated_commands
pattern VK_ACCESS_2_COMMAND_PREPROCESS_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COMMAND_PREPROCESS_READ_BIT_NV = 131072
#endif

#if VK_KHR_synchronization2 && VK_NV_device_generated_commands
pattern VK_ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COMMAND_PREPROCESS_WRITE_BIT_NV = 262144
#endif

#if VK_KHR_synchronization2 && VK_KHR_fragment_shading_rate && VK_NV_shading_rate_image
pattern VK_ACCESS_2_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR = 8388608
#endif

#if VK_KHR_synchronization2 && VK_NV_shading_rate_image
pattern VK_ACCESS_2_SHADING_RATE_IMAGE_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADING_RATE_IMAGE_READ_BIT_NV = 8388608
#endif

#if VK_KHR_synchronization2 && VK_KHR_acceleration_structure && VK_NV_ray_tracing
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_KHR = 2097152
#endif

#if VK_KHR_synchronization2 && VK_KHR_acceleration_structure && VK_NV_ray_tracing
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 4194304
#endif

#if VK_KHR_synchronization2 && VK_NV_ray_tracing
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_READ_BIT_NV = 2097152
#endif

#if VK_KHR_synchronization2 && VK_NV_ray_tracing
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_ACCELERATION_STRUCTURE_WRITE_BIT_NV = 4194304
#endif

#if VK_KHR_synchronization2 && VK_EXT_fragment_density_map
pattern VK_ACCESS_2_FRAGMENT_DENSITY_MAP_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 16777216
#endif

#if VK_KHR_synchronization2 && VK_EXT_blend_operation_advanced
pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 524288
#endif

#if VK_EXT_descriptor_buffer
pattern VK_ACCESS_2_DESCRIPTOR_BUFFER_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_DESCRIPTOR_BUFFER_READ_BIT_EXT = 2199023255552
#endif

#if VK_HUAWEI_invocation_mask
pattern VK_ACCESS_2_INVOCATION_MASK_READ_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_ACCESS_2_INVOCATION_MASK_READ_BIT_HUAWEI = 549755813888
#endif

#if VK_KHR_ray_tracing_maintenance1 && VK_KHR_ray_tracing_pipeline && VK_KHR_synchronization2
pattern VK_ACCESS_2_SHADER_BINDING_TABLE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_2_SHADER_BINDING_TABLE_READ_BIT_KHR = 1099511627776
#endif

#if VK_EXT_opacity_micromap
pattern VK_ACCESS_2_MICROMAP_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_MICROMAP_READ_BIT_EXT = 17592186044416
#endif

#if VK_EXT_opacity_micromap
pattern VK_ACCESS_2_MICROMAP_WRITE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_2_MICROMAP_WRITE_BIT_EXT = 35184372088832
#endif

#if VK_NV_optical_flow
pattern VK_ACCESS_2_OPTICAL_FLOW_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_OPTICAL_FLOW_READ_BIT_NV = 4398046511104
#endif

#if VK_NV_optical_flow
pattern VK_ACCESS_2_OPTICAL_FLOW_WRITE_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_2_OPTICAL_FLOW_WRITE_BIT_NV = 8796093022208
#endif