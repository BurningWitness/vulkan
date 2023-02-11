{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFormatFeatureFlagBits2 where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkFormatFeatureFlagBits2 = VkFlags64
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT = 1
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT = 2
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT_KHR = VK_FORMAT_FEATURE_2_STORAGE_IMAGE_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT = 4
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT_KHR = VK_FORMAT_FEATURE_2_STORAGE_IMAGE_ATOMIC_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT = 8
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT_KHR = VK_FORMAT_FEATURE_2_UNIFORM_TEXEL_BUFFER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT = 16
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT_KHR = VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT = 32
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT_KHR = VK_FORMAT_FEATURE_2_STORAGE_TEXEL_BUFFER_ATOMIC_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT = 64
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT_KHR = VK_FORMAT_FEATURE_2_VERTEX_BUFFER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT = 128
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT_KHR = VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT = 256
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT_KHR = VK_FORMAT_FEATURE_2_COLOR_ATTACHMENT_BLEND_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT = 512
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT_KHR = VK_FORMAT_FEATURE_2_DEPTH_STENCIL_ATTACHMENT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_BLIT_SRC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_BLIT_SRC_BIT = 1024
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_BLIT_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_BLIT_SRC_BIT_KHR = VK_FORMAT_FEATURE_2_BLIT_SRC_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_BLIT_DST_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_BLIT_DST_BIT = 2048
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_BLIT_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_BLIT_DST_BIT_KHR = VK_FORMAT_FEATURE_2_BLIT_DST_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT = 4096
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_LINEAR_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT = 8192
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT_EXT = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_CUBIC_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT = 16384
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT_KHR = VK_FORMAT_FEATURE_2_TRANSFER_SRC_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT = 32768
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT_KHR = VK_FORMAT_FEATURE_2_TRANSFER_DST_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT = 65536
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_FILTER_MINMAX_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT = 131072
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT_KHR = VK_FORMAT_FEATURE_2_MIDPOINT_CHROMA_SAMPLES_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT = 262144
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_LINEAR_FILTER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT = 524288
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_SEPARATE_RECONSTRUCTION_FILTER_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT = 1048576
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT = 2097152
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_YCBCR_CONVERSION_CHROMA_RECONSTRUCTION_EXPLICIT_FORCEABLE_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_DISJOINT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_DISJOINT_BIT = 4194304
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_DISJOINT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_DISJOINT_BIT_KHR = VK_FORMAT_FEATURE_2_DISJOINT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT = 8388608
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT_KHR = VK_FORMAT_FEATURE_2_COSITED_CHROMA_SAMPLES_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT = 2147483648
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT_KHR = VK_FORMAT_FEATURE_2_STORAGE_READ_WITHOUT_FORMAT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT = 4294967296
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT_KHR = VK_FORMAT_FEATURE_2_STORAGE_WRITE_WITHOUT_FORMAT_BIT
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT = 8589934592
#endif

#if VK_VERSION_1_3
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT_KHR = VK_FORMAT_FEATURE_2_SAMPLED_IMAGE_DEPTH_COMPARISON_BIT
#endif

#if VK_KHR_video_decode_queue && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_VIDEO_DECODE_OUTPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_VIDEO_DECODE_OUTPUT_BIT_KHR = 33554432
#endif

#if VK_KHR_video_decode_queue && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_VIDEO_DECODE_DPB_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_VIDEO_DECODE_DPB_BIT_KHR = 67108864
#endif

#if VK_KHR_acceleration_structure && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_ACCELERATION_STRUCTURE_VERTEX_BUFFER_BIT_KHR = 536870912
#endif

#if VK_EXT_fragment_density_map && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_FRAGMENT_DENSITY_MAP_BIT_EXT :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_FRAGMENT_DENSITY_MAP_BIT_EXT = 16777216
#endif

#if VK_KHR_fragment_shading_rate && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_FRAGMENT_SHADING_RATE_ATTACHMENT_BIT_KHR = 1073741824
#endif

#if VK_KHR_video_encode_queue && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_VIDEO_ENCODE_INPUT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_VIDEO_ENCODE_INPUT_BIT_KHR = 134217728
#endif

#if VK_KHR_video_encode_queue && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_VIDEO_ENCODE_DPB_BIT_KHR :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_VIDEO_ENCODE_DPB_BIT_KHR = 268435456
#endif

#if VK_NV_linear_color_attachment && VK_KHR_format_feature_flags2
-- | Format support linear image as render target, it cannot be mixed with non linear attachment
pattern VK_FORMAT_FEATURE_2_LINEAR_COLOR_ATTACHMENT_BIT_NV :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_LINEAR_COLOR_ATTACHMENT_BIT_NV = 274877906944
#endif

#if VK_QCOM_image_processing && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_WEIGHT_IMAGE_BIT_QCOM = 17179869184
#endif

#if VK_QCOM_image_processing && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_WEIGHT_SAMPLED_IMAGE_BIT_QCOM = 34359738368
#endif

#if VK_QCOM_image_processing && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_BLOCK_MATCHING_BIT_QCOM = 68719476736
#endif

#if VK_QCOM_image_processing && VK_KHR_format_feature_flags2
pattern VK_FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_BOX_FILTER_SAMPLED_BIT_QCOM = 137438953472
#endif

#if VK_NV_optical_flow
pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_IMAGE_BIT_NV :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_IMAGE_BIT_NV = 1099511627776
#endif

#if VK_NV_optical_flow
pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_VECTOR_BIT_NV :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_VECTOR_BIT_NV = 2199023255552
#endif

#if VK_NV_optical_flow
pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_COST_BIT_NV :: (Eq a, Num a) => a
pattern VK_FORMAT_FEATURE_2_OPTICAL_FLOW_COST_BIT_NV = 4398046511104
#endif