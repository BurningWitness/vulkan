{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoChromaSubsamplingFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
-- | Vulkan video chroma subsampling definitions
type VkVideoChromaSubsamplingFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CHROMA_SUBSAMPLING_INVALID_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CHROMA_SUBSAMPLING_INVALID_KHR = 0
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CHROMA_SUBSAMPLING_MONOCHROME_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CHROMA_SUBSAMPLING_MONOCHROME_BIT_KHR = 1
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CHROMA_SUBSAMPLING_420_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CHROMA_SUBSAMPLING_420_BIT_KHR = 2
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CHROMA_SUBSAMPLING_422_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CHROMA_SUBSAMPLING_422_BIT_KHR = 4
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CHROMA_SUBSAMPLING_444_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CHROMA_SUBSAMPLING_444_BIT_KHR = 8
#endif