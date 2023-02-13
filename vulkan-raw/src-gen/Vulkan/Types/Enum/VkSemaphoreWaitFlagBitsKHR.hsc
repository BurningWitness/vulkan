{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreWaitFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_timeline_semaphore
type VkSemaphoreWaitFlagBitsKHR = VkFlags
#endif