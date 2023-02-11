{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeRateControlModeFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_encode_queue
type VkVideoEncodeRateControlModeFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_NONE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_NONE_BIT_KHR = 0
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_CBR_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_CBR_BIT_KHR = 1
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_VBR_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_RATE_CONTROL_MODE_VBR_BIT_KHR = 2
#endif