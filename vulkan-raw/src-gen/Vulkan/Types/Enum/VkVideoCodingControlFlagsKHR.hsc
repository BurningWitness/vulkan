{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoCodingControlFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoCodingControlFlagsKHR = VkFlags
#endif