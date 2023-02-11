{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH265RateControlStructureEXT where

import Data.Int



#if VK_EXT_video_encode_h265
type VkVideoEncodeH265RateControlStructureEXT = #{type int}
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_UNKNOWN_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_UNKNOWN_EXT = 0
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_FLAT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_FLAT_EXT = 1
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_DYADIC_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_RATE_CONTROL_STRUCTURE_DYADIC_EXT = 2
#endif