{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueueGlobalPriorityKHR where

import Data.Int



#if VK_KHR_global_priority
type VkQueueGlobalPriorityKHR = #{type int}
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR = 128
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR = 256
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR = 512
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR = 1024
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_LOW_EXT = VK_QUEUE_GLOBAL_PRIORITY_LOW_KHR
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_EXT = VK_QUEUE_GLOBAL_PRIORITY_MEDIUM_KHR
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_HIGH_EXT = VK_QUEUE_GLOBAL_PRIORITY_HIGH_KHR
#endif

#if VK_KHR_global_priority
pattern VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT :: (Eq a, Num a) => a
pattern VK_QUEUE_GLOBAL_PRIORITY_REALTIME_EXT = VK_QUEUE_GLOBAL_PRIORITY_REALTIME_KHR
#endif