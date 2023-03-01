{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreType where

import Data.Int



#if VK_VERSION_1_2
type VkSemaphoreType = #{type int}
#endif

#if VK_VERSION_1_2
pattern VK_SEMAPHORE_TYPE_BINARY :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_TYPE_BINARY = 0
#endif

#if VK_VERSION_1_2
pattern VK_SEMAPHORE_TYPE_TIMELINE :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_TYPE_TIMELINE = 1
#endif

#if VK_VERSION_1_2
pattern VK_SEMAPHORE_TYPE_BINARY_KHR :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_TYPE_BINARY_KHR = 0
#endif

#if VK_VERSION_1_2
pattern VK_SEMAPHORE_TYPE_TIMELINE_KHR :: (Eq a, Num a) => a
pattern VK_SEMAPHORE_TYPE_TIMELINE_KHR = 1
#endif