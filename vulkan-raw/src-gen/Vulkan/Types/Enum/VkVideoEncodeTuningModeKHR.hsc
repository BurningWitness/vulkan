{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeTuningModeKHR where

import Data.Int



#if VK_KHR_video_encode_queue
type VkVideoEncodeTuningModeKHR = #{type int}
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_TUNING_MODE_DEFAULT_KHR = 0
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_TUNING_MODE_HIGH_QUALITY_KHR = 1
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_TUNING_MODE_LOW_LATENCY_KHR = 2
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_TUNING_MODE_ULTRA_LOW_LATENCY_KHR = 3
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_TUNING_MODE_LOSSLESS_KHR = 4
#endif