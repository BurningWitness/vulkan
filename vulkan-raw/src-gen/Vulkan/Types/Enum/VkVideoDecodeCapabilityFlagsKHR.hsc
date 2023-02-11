{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoDecodeCapabilityFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_decode_queue
type VkVideoDecodeCapabilityFlagsKHR = VkFlags
#endif