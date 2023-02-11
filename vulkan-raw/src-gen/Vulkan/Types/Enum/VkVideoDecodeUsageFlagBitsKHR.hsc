{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoDecodeUsageFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_decode_queue
type VkVideoDecodeUsageFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_decode_queue
pattern VK_VIDEO_DECODE_USAGE_DEFAULT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_USAGE_DEFAULT_KHR = 0
#endif

#if VK_KHR_video_decode_queue
pattern VK_VIDEO_DECODE_USAGE_TRANSCODING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_USAGE_TRANSCODING_BIT_KHR = 1
#endif

#if VK_KHR_video_decode_queue
pattern VK_VIDEO_DECODE_USAGE_OFFLINE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_USAGE_OFFLINE_BIT_KHR = 2
#endif

#if VK_KHR_video_decode_queue
pattern VK_VIDEO_DECODE_USAGE_STREAMING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_USAGE_STREAMING_BIT_KHR = 4
#endif