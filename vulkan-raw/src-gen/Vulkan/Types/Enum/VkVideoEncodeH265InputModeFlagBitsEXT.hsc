{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH265InputModeFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h265
type VkVideoEncodeH265InputModeFlagBitsEXT = VkFlags
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_FRAME_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_FRAME_BIT_EXT = 1
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_SLICE_SEGMENT_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_SLICE_SEGMENT_BIT_EXT = 2
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_NON_VCL_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_INPUT_MODE_NON_VCL_BIT_EXT = 4
#endif