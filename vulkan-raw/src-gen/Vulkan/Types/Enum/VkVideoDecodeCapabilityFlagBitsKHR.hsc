{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoDecodeCapabilityFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_decode_queue
type VkVideoDecodeCapabilityFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_decode_queue
pattern VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_COINCIDE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_COINCIDE_BIT_KHR = 1
#endif

#if VK_KHR_video_decode_queue
pattern VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_DISTINCT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_DECODE_CAPABILITY_DPB_AND_OUTPUT_DISTINCT_BIT_KHR = 2
#endif