{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoSessionParametersCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_video_queue
type VkVideoSessionParametersCreateFlagsKHR = VkFlags
#endif