{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoCapabilityFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoCapabilityFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CAPABILITY_PROTECTED_CONTENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CAPABILITY_PROTECTED_CONTENT_BIT_KHR = 1
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_CAPABILITY_SEPARATE_REFERENCE_IMAGES_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_CAPABILITY_SEPARATE_REFERENCE_IMAGES_BIT_KHR = 2
#endif