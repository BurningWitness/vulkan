{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeContentFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_encode_queue
type VkVideoEncodeContentFlagsKHR = VkFlags
#endif