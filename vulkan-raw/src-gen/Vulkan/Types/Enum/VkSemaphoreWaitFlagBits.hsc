{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreWaitFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_2
type VkSemaphoreWaitFlagBits = VkFlags
#endif

#if VK_VERSION_1_2
pattern VK_SEMAPHORE_WAIT_ANY_BIT :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_WAIT_ANY_BIT = 1
#endif

#if VK_KHR_timeline_semaphore
pattern VK_SEMAPHORE_WAIT_ANY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_WAIT_ANY_BIT_KHR = VK_SEMAPHORE_WAIT_ANY_BIT
#endif