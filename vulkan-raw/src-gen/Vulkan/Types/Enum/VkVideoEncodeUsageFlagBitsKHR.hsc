{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeUsageFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_encode_queue
type VkVideoEncodeUsageFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_USAGE_DEFAULT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_USAGE_DEFAULT_KHR = 0
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_USAGE_TRANSCODING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_USAGE_TRANSCODING_BIT_KHR = 1
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_USAGE_STREAMING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_USAGE_STREAMING_BIT_KHR = 2
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_USAGE_RECORDING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_USAGE_RECORDING_BIT_KHR = 4
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_USAGE_CONFERENCING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_USAGE_CONFERENCING_BIT_KHR = 8
#endif