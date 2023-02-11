{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH265CapabilityFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h265
type VkVideoEncodeH265CapabilityFlagBitsEXT = VkFlags
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SEPARATE_COLOUR_PLANE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SEPARATE_COLOUR_PLANE_BIT_EXT = 1
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SCALING_LISTS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SCALING_LISTS_BIT_EXT = 2
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SAMPLE_ADAPTIVE_OFFSET_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SAMPLE_ADAPTIVE_OFFSET_ENABLED_BIT_EXT = 4
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_PCM_ENABLE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_PCM_ENABLE_BIT_EXT = 8
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SPS_TEMPORAL_MVP_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SPS_TEMPORAL_MVP_ENABLED_BIT_EXT = 16
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_HRD_COMPLIANCE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_HRD_COMPLIANCE_BIT_EXT = 32
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_INIT_QP_MINUS26_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_INIT_QP_MINUS26_BIT_EXT = 64
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_LOG2_PARALLEL_MERGE_LEVEL_MINUS2_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_LOG2_PARALLEL_MERGE_LEVEL_MINUS2_BIT_EXT = 128
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SIGN_DATA_HIDING_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SIGN_DATA_HIDING_ENABLED_BIT_EXT = 256
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSFORM_SKIP_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSFORM_SKIP_ENABLED_BIT_EXT = 512
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSFORM_SKIP_DISABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSFORM_SKIP_DISABLED_BIT_EXT = 1024
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_PPS_SLICE_CHROMA_QP_OFFSETS_PRESENT_BIT_EXT = 2048
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_PRED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_PRED_BIT_EXT = 4096
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_BIPRED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_BIPRED_BIT_EXT = 8192
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_PRED_NO_TABLE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_WEIGHTED_PRED_NO_TABLE_BIT_EXT = 16384
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSQUANT_BYPASS_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_TRANSQUANT_BYPASS_ENABLED_BIT_EXT = 32768
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_ENTROPY_CODING_SYNC_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_ENTROPY_CODING_SYNC_ENABLED_BIT_EXT = 65536
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DEBLOCKING_FILTER_OVERRIDE_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DEBLOCKING_FILTER_OVERRIDE_ENABLED_BIT_EXT = 131072
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILE_PER_FRAME_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILE_PER_FRAME_BIT_EXT = 262144
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_SLICE_PER_TILE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_SLICE_PER_TILE_BIT_EXT = 524288
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILE_PER_SLICE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_MULTIPLE_TILE_PER_SLICE_BIT_EXT = 1048576
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SLICE_SEGMENT_CTB_COUNT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_SLICE_SEGMENT_CTB_COUNT_BIT_EXT = 2097152
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_ROW_UNALIGNED_SLICE_SEGMENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_ROW_UNALIGNED_SLICE_SEGMENT_BIT_EXT = 4194304
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DEPENDENT_SLICE_SEGMENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DEPENDENT_SLICE_SEGMENT_BIT_EXT = 8388608
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_EXT = 16777216
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_EXT = 33554432
#endif