{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoSessionCreateFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoSessionCreateFlagBitsKHR = VkFlags
#endif

#if VK_KHR_video_queue
pattern VK_VIDEO_SESSION_CREATE_PROTECTED_CONTENT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_VIDEO_SESSION_CREATE_PROTECTED_CONTENT_BIT_KHR = 1
#endif