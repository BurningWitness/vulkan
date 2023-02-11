{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoCodecOperationFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoCodecOperationFlagsKHR = VkFlags
#endif