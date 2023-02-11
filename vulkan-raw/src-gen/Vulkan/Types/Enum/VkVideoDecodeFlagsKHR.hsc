{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoDecodeFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_decode_queue
type VkVideoDecodeFlagsKHR = VkFlags
#endif