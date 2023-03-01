{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoDecodeH264PictureLayoutFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_decode_h264
type VkVideoDecodeH264PictureLayoutFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_decode_h264
pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_PROGRESSIVE_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_PROGRESSIVE_KHR = 0
#endif

#if VK_KHR_video_decode_h264
pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_INTERLEAVED_LINES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_INTERLEAVED_LINES_BIT_KHR = 1
#endif

#if VK_KHR_video_decode_h264
pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_SEPARATE_PLANES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_H264_PICTURE_LAYOUT_INTERLACED_SEPARATE_PLANES_BIT_KHR = 2
#endif