{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH265CtbSizeFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h265
type VkVideoEncodeH265CtbSizeFlagBitsEXT = VkFlags
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_16_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_16_BIT_EXT = 1
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_32_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_32_BIT_EXT = 2
#endif

#if VK_EXT_video_encode_h265
pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_64_BIT_EXT :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_H265_CTB_SIZE_64_BIT_EXT = 4
#endif