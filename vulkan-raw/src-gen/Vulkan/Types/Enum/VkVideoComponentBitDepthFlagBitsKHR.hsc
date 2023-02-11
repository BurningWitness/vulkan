{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoComponentBitDepthFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
-- | Vulkan video component bit depth definitions
type VkVideoComponentBitDepthFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_INVALID_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_INVALID_KHR = 0
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_8_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_8_BIT_KHR = 1
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_10_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_10_BIT_KHR = 4
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_12_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_COMPONENT_BIT_DEPTH_12_BIT_KHR = 16
#endif