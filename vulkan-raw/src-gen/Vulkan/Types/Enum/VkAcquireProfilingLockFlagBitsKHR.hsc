{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAcquireProfilingLockFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_performance_query
type VkAcquireProfilingLockFlagBitsKHR = VkFlags
#endif