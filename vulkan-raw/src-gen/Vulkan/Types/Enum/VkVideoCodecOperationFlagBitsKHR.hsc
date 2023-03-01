{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoCodecOperationFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoCodecOperationFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CODEC_OPERATION_NONE_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CODEC_OPERATION_NONE_KHR = 0
#endif

#if VK_EXT_video_encode_h264
pattern VK_VIDEO_CODEC_OPERATION_ENCODE_H264_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_CODEC_OPERATION_ENCODE_H264_BIT_EXT = 65536
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_CODEC_OPERATION_ENCODE_H265_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_CODEC_OPERATION_ENCODE_H265_BIT_EXT = 131072
#endif

#if VK_KHR_video_decode_h264
pattern VK_VIDEO_CODEC_OPERATION_DECODE_H264_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CODEC_OPERATION_DECODE_H264_BIT_KHR = 1
#endif

#if VK_KHR_video_decode_h265
pattern VK_VIDEO_CODEC_OPERATION_DECODE_H265_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CODEC_OPERATION_DECODE_H265_BIT_KHR = 2
#endif