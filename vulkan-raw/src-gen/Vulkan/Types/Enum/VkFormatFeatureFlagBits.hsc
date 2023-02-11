{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFormatFeatureFlagBits where

import Vulkan.Types.Base



type VkFormatFeatureFlagBits = VkFlags

-- | Format can be used for sampled images (SAMPLED_IMAGE and COMBINED_IMAGE_SAMPLER descriptor types)
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_BIT = 1

-- | Format can be used for storage images (STORAGE_IMAGE descriptor type)
pattern VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_STORAGE_IMAGE_BIT = 2

-- | Format supports atomic operations in case it is used for storage images
pattern VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_STORAGE_IMAGE_ATOMIC_BIT = 4

-- | Format can be used for uniform texel buffers (TBOs)
pattern VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_UNIFORM_TEXEL_BUFFER_BIT = 8

-- | Format can be used for storage texel buffers (IBOs)
pattern VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_BIT = 16

-- | Format supports atomic operations in case it is used for storage texel buffers
pattern VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 32

-- | Format can be used for vertex buffers (VBOs)
pattern VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_VERTEX_BUFFER_BIT = 64

-- | Format can be used for color attachment images
pattern VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BIT = 128

-- | Format supports blending in case it is used for color attachment images
pattern VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_COLOR_ATTACHMENT_BLEND_BIT = 256

-- | Format can be used for depth/stencil attachment images
pattern VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_DEPTH_STENCIL_ATTACHMENT_BIT = 512

-- | Format can be used as the source image of blits with vkCmdBlitImage
pattern VK_FORMAT_FEATURE_BLIT_SRC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_BLIT_SRC_BIT = 1024

-- | Format can be used as the destination image of blits with vkCmdBlitImage
pattern VK_FORMAT_FEATURE_BLIT_DST_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_BLIT_DST_BIT = 2048

-- | Format can be filtered with VK_FILTER_LINEAR when being sampled
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 4096

#if VK_VERSION_1_1 || (VK_KHR_maintenance1)
-- | Format can be used as the source image of image transfer commands
pattern VK_FORMAT_FEATURE_TRANSFER_SRC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_TRANSFER_SRC_BIT = 16384
#endif

#if VK_VERSION_1_1 || (VK_KHR_maintenance1)
-- | Format can be used as the destination image of image transfer commands
pattern VK_FORMAT_FEATURE_TRANSFER_DST_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_TRANSFER_DST_BIT = 32768
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
-- | Format can have midpoint rather than cosited chroma samples
pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT = 131072
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
-- | Format can be used with linear filtering whilst color conversion is enabled
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 262144
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
-- | Format can have different chroma, min and mag filters
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 524288
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 1048576
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 2097152
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
-- | Format supports disjoint planes
pattern VK_FORMAT_FEATURE_DISJOINT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_DISJOINT_BIT = 4194304
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
-- | Format can have cosited rather than midpoint chroma samples
pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT = 8388608
#endif

#if VK_VERSION_1_2 || (VK_EXT_sampler_filter_minmax)
-- | Format can be used with min/max reduction filtering
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 65536
#endif

#if VK_IMG_filter_cubic
-- | Format can be filtered with VK_FILTER_CUBIC_IMG when being sampled
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_IMG = VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT
#endif

#if VK_KHR_video_decode_queue
pattern VK_FORMAT_FEATURE_VIDEO_DECODE_OUTPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_VIDEO_DECODE_OUTPUT_BIT_KHR = 33554432
#endif

#if VK_KHR_video_decode_queue
pattern VK_FORMAT_FEATURE_VIDEO_DECODE_DPB_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_VIDEO_DECODE_DPB_BIT_KHR = 67108864
#endif

#if VK_KHR_maintenance1
pattern VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_TRANSFER_SRC_BIT_KHR = VK_FORMAT_FEATURE_TRANSFER_SRC_BIT
#endif

#if VK_KHR_maintenance1
pattern VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_TRANSFER_DST_BIT_KHR = VK_FORMAT_FEATURE_TRANSFER_DST_BIT
#endif

#if VK_EXT_sampler_filter_minmax
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT_EXT = VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_MINMAX_BIT
#endif

#if VK_KHR_acceleration_structure
pattern VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 536870912
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = VK_FORMAT_FEATURE_MIDPOINT_CHROMA_SAMPLES_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = VK_FORMAT_FEATURE_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_DISJOINT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_DISJOINT_BIT_KHR = VK_FORMAT_FEATURE_DISJOINT_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT_KHR = VK_FORMAT_FEATURE_COSITED_CHROMA_SAMPLES_BIT
#endif

#if VK_EXT_filter_cubic
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = 8192
#endif

#if VK_EXT_fragment_density_map
pattern VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_FRAGMENT_DENSITY_MAP_BIT_EXT = 16777216
#endif

#if VK_KHR_fragment_shading_rate
pattern VK_FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 1073741824
#endif

#if VK_KHR_video_encode_queue
pattern VK_FORMAT_FEATURE_VIDEO_ENCODE_INPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_VIDEO_ENCODE_INPUT_BIT_KHR = 134217728
#endif

#if VK_KHR_video_encode_queue
pattern VK_FORMAT_FEATURE_VIDEO_ENCODE_DPB_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_VIDEO_ENCODE_DPB_BIT_KHR = 268435456
#endif