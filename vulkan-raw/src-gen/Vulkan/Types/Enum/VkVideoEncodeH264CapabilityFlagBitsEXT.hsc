{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH264CapabilityFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h264
type VkVideoEncodeH264CapabilityFlagBitsEXT = VkFlags
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DIRECT_8X8_INFERENCE_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DIRECT_8X8_INFERENCE_ENABLED_BIT_EXT = 1
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DIRECT_8X8_INFERENCE_DISABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DIRECT_8X8_INFERENCE_DISABLED_BIT_EXT = 2
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SEPARATE_COLOUR_PLANE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SEPARATE_COLOUR_PLANE_BIT_EXT = 4
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_QPPRIME_Y_ZERO_TRANSFORM_BYPASS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_QPPRIME_Y_ZERO_TRANSFORM_BYPASS_BIT_EXT = 8
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SCALING_LISTS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SCALING_LISTS_BIT_EXT = 16
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_HRD_COMPLIANCE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_HRD_COMPLIANCE_BIT_EXT = 32
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_CHROMA_QP_OFFSET_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_CHROMA_QP_OFFSET_BIT_EXT = 64
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SECOND_CHROMA_QP_OFFSET_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SECOND_CHROMA_QP_OFFSET_BIT_EXT = 128
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_PIC_INIT_QP_MINUS26_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_PIC_INIT_QP_MINUS26_BIT_EXT = 256
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_PRED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_PRED_BIT_EXT = 512
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_BIPRED_EXPLICIT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_BIPRED_EXPLICIT_BIT_EXT = 1024
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_BIPRED_IMPLICIT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_BIPRED_IMPLICIT_BIT_EXT = 2048
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_PRED_NO_TABLE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_WEIGHTED_PRED_NO_TABLE_BIT_EXT = 4096
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_TRANSFORM_8X8_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_TRANSFORM_8X8_BIT_EXT = 8192
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_CABAC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_CABAC_BIT_EXT = 16384
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_CAVLC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_CAVLC_BIT_EXT = 32768
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DEBLOCKING_FILTER_DISABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DEBLOCKING_FILTER_DISABLED_BIT_EXT = 65536
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DEBLOCKING_FILTER_ENABLED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DEBLOCKING_FILTER_ENABLED_BIT_EXT = 131072
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DEBLOCKING_FILTER_PARTIAL_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DEBLOCKING_FILTER_PARTIAL_BIT_EXT = 262144
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DISABLE_DIRECT_SPATIAL_MV_PRED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DISABLE_DIRECT_SPATIAL_MV_PRED_BIT_EXT = 524288
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_MULTIPLE_SLICE_PER_FRAME_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_MULTIPLE_SLICE_PER_FRAME_BIT_EXT = 1048576
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SLICE_MB_COUNT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_SLICE_MB_COUNT_BIT_EXT = 2097152
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_ROW_UNALIGNED_SLICE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_ROW_UNALIGNED_SLICE_BIT_EXT = 4194304
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_DIFFERENT_SLICE_TYPE_BIT_EXT = 8388608
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H264_CAPABILITY_B_FRAME_IN_L1_LIST_BIT_EXT = 16777216
#endif