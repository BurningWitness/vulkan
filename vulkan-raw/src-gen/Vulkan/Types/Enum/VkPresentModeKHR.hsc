{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPresentModeKHR where

import Data.Int



#if VK_KHR_surface
type VkPresentModeKHR = #{type int}
#endif

#if VK_KHR_surface
pattern VK_PRESENT_MODE_IMMEDIATE_KHR :: (Eq a, Num a) => a
pattern VK_PRESENT_MODE_IMMEDIATE_KHR = 0
#endif

#if VK_KHR_surface
pattern VK_PRESENT_MODE_MAILBOX_KHR :: (Eq a, Num a) => a
pattern VK_PRESENT_MODE_MAILBOX_KHR = 1
#endif

#if VK_KHR_surface
pattern VK_PRESENT_MODE_FIFO_KHR :: (Eq a, Num a) => a
pattern VK_PRESENT_MODE_FIFO_KHR = 2
#endif

#if VK_KHR_surface
pattern VK_PRESENT_MODE_FIFO_RELAXED_KHR :: (Eq a, Num a) => a
pattern VK_PRESENT_MODE_FIFO_RELAXED_KHR = 3
#endif

#if VK_KHR_shared_presentable_image
pattern VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR :: (Eq a, Num a) => a
pattern VK_PRESENT_MODE_SHARED_DEMAND_REFRESH_KHR = 1000111000
#endif

#if VK_KHR_shared_presentable_image
pattern VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR :: (Eq a, Num a) => a
pattern VK_PRESENT_MODE_SHARED_CONTINUOUS_REFRESH_KHR = 1000111001
#endif