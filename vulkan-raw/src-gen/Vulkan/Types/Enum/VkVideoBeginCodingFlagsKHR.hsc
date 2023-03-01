{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoBeginCodingFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoBeginCodingFlagsKHR = VkFlags
#endif