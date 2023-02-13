{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreWaitFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_timeline_semaphore
type VkSemaphoreWaitFlagsKHR = VkFlags
#endif