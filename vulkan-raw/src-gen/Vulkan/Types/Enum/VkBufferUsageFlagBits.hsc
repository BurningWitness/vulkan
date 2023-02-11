{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBufferUsageFlagBits where

import Vulkan.Types.Base



type VkBufferUsageFlagBits = VkFlags

-- | Can be used as a source of transfer operations
pattern VK_BUFFER_USAGE_TRANSFER_SRC_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_TRANSFER_SRC_BIT = 1

-- | Can be used as a destination of transfer operations
pattern VK_BUFFER_USAGE_TRANSFER_DST_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_TRANSFER_DST_BIT = 2

-- | Can be used as TBO
pattern VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_UNIFORM_TEXEL_BUFFER_BIT = 4

-- | Can be used as IBO
pattern VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_STORAGE_TEXEL_BUFFER_BIT = 8

-- | Can be used as UBO
pattern VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_UNIFORM_BUFFER_BIT = 16

-- | Can be used as SSBO
pattern VK_BUFFER_USAGE_STORAGE_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_STORAGE_BUFFER_BIT = 32

-- | Can be used as source of fixed-function index fetch (index buffer)
pattern VK_BUFFER_USAGE_INDEX_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_INDEX_BUFFER_BIT = 64

-- | Can be used as source of fixed-function vertex fetch (VBO)
pattern VK_BUFFER_USAGE_VERTEX_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_VERTEX_BUFFER_BIT = 128

-- | Can be the source of indirect parameters (e.g. indirect buffer, parameter buffer)
pattern VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_INDIRECT_BUFFER_BIT = 256

#if VK_VERSION_1_2 || (VK_EXT_buffer_device_address) || (VK_KHR_buffer_device_address)
pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT = 131072
#endif

#if VK_KHR_video_decode_queue
pattern VK_BUFFER_USAGE_VIDEO_DECODE_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_VIDEO_DECODE_SRC_BIT_KHR = 8192
#endif

#if VK_KHR_video_decode_queue
pattern VK_BUFFER_USAGE_VIDEO_DECODE_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_VIDEO_DECODE_DST_BIT_KHR = 16384
#endif

#if VK_EXT_transform_feedback
pattern VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_BUFFER_BIT_EXT = 2048
#endif

#if VK_EXT_transform_feedback
pattern VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_TRANSFORM_FEEDBACK_COUNTER_BUFFER_BIT_EXT = 4096
#endif

#if VK_EXT_conditional_rendering
-- | Specifies the buffer can be used as predicate in conditional rendering
pattern VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_CONDITIONAL_RENDERING_BIT_EXT = 512
#endif

#if VK_KHR_acceleration_structure
pattern VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_BUILD_INPUT_READ_ONLY_BIT_KHR = 524288
#endif

#if VK_KHR_acceleration_structure
pattern VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_ACCELERATION_STRUCTURE_STORAGE_BIT_KHR = 1048576
#endif

#if VK_NV_ray_tracing
pattern VK_BUFFER_USAGE_RAY_TRACING_BIT_NV :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_RAY_TRACING_BIT_NV = VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR
#endif

#if VK_EXT_buffer_device_address
pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_EXT = VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT
#endif

#if VK_KHR_buffer_device_address
pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT_KHR = VK_BUFFER_USAGE_SHADER_DEVICE_ADDRESS_BIT
#endif

#if VK_KHR_video_encode_queue
pattern VK_BUFFER_USAGE_VIDEO_ENCODE_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_VIDEO_ENCODE_DST_BIT_KHR = 32768
#endif

#if VK_KHR_video_encode_queue
pattern VK_BUFFER_USAGE_VIDEO_ENCODE_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_VIDEO_ENCODE_SRC_BIT_KHR = 65536
#endif

#if VK_EXT_descriptor_buffer
pattern VK_BUFFER_USAGE_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_SAMPLER_DESCRIPTOR_BUFFER_BIT_EXT = 2097152
#endif

#if VK_EXT_descriptor_buffer
pattern VK_BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_RESOURCE_DESCRIPTOR_BUFFER_BIT_EXT = 4194304
#endif

#if VK_EXT_descriptor_buffer
pattern VK_BUFFER_USAGE_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_PUSH_DESCRIPTORS_DESCRIPTOR_BUFFER_BIT_EXT = 67108864
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_SHADER_BINDING_TABLE_BIT_KHR = 1024
#endif

#if VK_EXT_opacity_micromap
pattern VK_BUFFER_USAGE_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_MICROMAP_BUILD_INPUT_READ_ONLY_BIT_EXT = 8388608
#endif

#if VK_EXT_opacity_micromap
pattern VK_BUFFER_USAGE_MICROMAP_STORAGE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_USAGE_MICROMAP_STORAGE_BIT_EXT = 16777216
#endif