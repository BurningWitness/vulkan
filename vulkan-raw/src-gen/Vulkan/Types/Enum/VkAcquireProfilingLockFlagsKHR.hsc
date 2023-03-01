{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAcquireProfilingLockFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_performance_query
type VkAcquireProfilingLockFlagsKHR = VkFlags
#endif