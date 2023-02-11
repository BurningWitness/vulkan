{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeContentFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_encode_queue
type VkVideoEncodeContentFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_CONTENT_DEFAULT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_CONTENT_DEFAULT_KHR = 0
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_CONTENT_CAMERA_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_CONTENT_CAMERA_BIT_KHR = 1
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_CONTENT_DESKTOP_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_CONTENT_DESKTOP_BIT_KHR = 2
#endif

#if VK_KHR_video_encode_queue
pattern VK_VIDEO_ENCODE_CONTENT_RENDERED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_ENCODE_CONTENT_RENDERED_BIT_KHR = 4
#endif