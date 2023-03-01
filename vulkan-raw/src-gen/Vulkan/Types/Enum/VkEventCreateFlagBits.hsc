{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkEventCreateFlagBits where

import Vulkan.Types.Base



type VkEventCreateFlagBits = VkFlags

#if VK_VERSION_1_3 || (VK_KHR_synchronization2)
pattern VK_EVENT_CREATE_DEVICE_ONLY_BIT :: (Eq a, Num a) => a
pattern VK_EVENT_CREATE_DEVICE_ONLY_BIT = 1
#endif

#if VK_KHR_synchronization2
pattern VK_EVENT_CREATE_DEVICE_ONLY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EVENT_CREATE_DEVICE_ONLY_BIT_KHR = 1
#endif