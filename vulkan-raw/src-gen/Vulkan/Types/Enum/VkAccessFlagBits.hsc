{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccessFlagBits where

import Vulkan.Types.Base



type VkAccessFlagBits = VkFlags

-- | Controls coherency of indirect command reads
pattern VK_ACCESS_INDIRECT_COMMAND_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_INDIRECT_COMMAND_READ_BIT = 1

-- | Controls coherency of index reads
pattern VK_ACCESS_INDEX_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_INDEX_READ_BIT = 2

-- | Controls coherency of vertex attribute reads
pattern VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_VERTEX_ATTRIBUTE_READ_BIT = 4

-- | Controls coherency of uniform buffer reads
pattern VK_ACCESS_UNIFORM_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_UNIFORM_READ_BIT = 8

-- | Controls coherency of input attachment reads
pattern VK_ACCESS_INPUT_ATTACHMENT_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_INPUT_ATTACHMENT_READ_BIT = 16

-- | Controls coherency of shader reads
pattern VK_ACCESS_SHADER_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_SHADER_READ_BIT = 32

-- | Controls coherency of shader writes
pattern VK_ACCESS_SHADER_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_SHADER_WRITE_BIT = 64

-- | Controls coherency of color attachment reads
pattern VK_ACCESS_COLOR_ATTACHMENT_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_COLOR_ATTACHMENT_READ_BIT = 128

-- | Controls coherency of color attachment writes
pattern VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT = 256

-- | Controls coherency of depth/stencil attachment reads
pattern VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_READ_BIT = 512

-- | Controls coherency of depth/stencil attachment writes
pattern VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT = 1024

-- | Controls coherency of transfer reads
pattern VK_ACCESS_TRANSFER_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_TRANSFER_READ_BIT = 2048

-- | Controls coherency of transfer writes
pattern VK_ACCESS_TRANSFER_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_TRANSFER_WRITE_BIT = 4096

-- | Controls coherency of host reads
pattern VK_ACCESS_HOST_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_HOST_READ_BIT = 8192

-- | Controls coherency of host writes
pattern VK_ACCESS_HOST_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_HOST_WRITE_BIT = 16384

-- | Controls coherency of memory reads
pattern VK_ACCESS_MEMORY_READ_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_MEMORY_READ_BIT = 32768

-- | Controls coherency of memory writes
pattern VK_ACCESS_MEMORY_WRITE_BIT :: (Eq a, Num a) => a
pattern VK_ACCESS_MEMORY_WRITE_BIT = 65536

#if VK_VERSION_1_3 || (VK_KHR_synchronization2)
pattern VK_ACCESS_NONE :: (Eq a, Num a) => a
pattern VK_ACCESS_NONE = 0
#endif

#if VK_EXT_transform_feedback
pattern VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_TRANSFORM_FEEDBACK_WRITE_BIT_EXT = 33554432
#endif

#if VK_EXT_transform_feedback
pattern VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_READ_BIT_EXT = 67108864
#endif

#if VK_EXT_transform_feedback
pattern VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_TRANSFORM_FEEDBACK_COUNTER_WRITE_BIT_EXT = 134217728
#endif

#if VK_EXT_conditional_rendering
-- | read access flag for reading conditional rendering predicate
pattern VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_CONDITIONAL_RENDERING_READ_BIT_EXT = 1048576
#endif

#if VK_EXT_blend_operation_advanced
pattern VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_COLOR_ATTACHMENT_READ_NONCOHERENT_BIT_EXT = 524288
#endif

#if (VK_KHR_acceleration_structure) || (VK_NV_ray_tracing)
pattern VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR = 2097152
#endif

#if (VK_KHR_acceleration_structure) || (VK_NV_ray_tracing)
pattern VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR = 4194304
#endif

#if VK_NV_shading_rate_image
pattern VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_SHADING_RATE_IMAGE_READ_BIT_NV = VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_NV = VK_ACCESS_ACCELERATION_STRUCTURE_READ_BIT_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_NV = VK_ACCESS_ACCELERATION_STRUCTURE_WRITE_BIT_KHR
#endif

#if VK_EXT_fragment_density_map
pattern VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCESS_FRAGMENT_DENSITY_MAP_READ_BIT_EXT = 16777216
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_FRAGMENT_SHADING_RATE_ATTACHMENT_READ_BIT_KHR = 8388608
#endif

#if VK_NV_device_generated_commands
pattern VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_COMMAND_PREPROCESS_READ_BIT_NV = 131072
#endif

#if VK_NV_device_generated_commands
pattern VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCESS_COMMAND_PREPROCESS_WRITE_BIT_NV = 262144
#endif

#if VK_KHR_synchronization2
pattern VK_ACCESS_NONE_KHR :: (Eq a, Num a) => a
pattern VK_ACCESS_NONE_KHR = VK_ACCESS_NONE
#endif