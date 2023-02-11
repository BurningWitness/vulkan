{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryAllocateFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkMemoryAllocateFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
-- | Force allocation on specific devices
pattern VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT = 1
#endif

#if VK_VERSION_1_2 || (VK_KHR_buffer_device_address)
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT = 2
#endif

#if VK_VERSION_1_2 || (VK_KHR_buffer_device_address)
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 4
#endif

#if VK_KHR_device_group
pattern VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR :: (Eq a, Num a) => a
pattern VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT_KHR = VK_MEMORY_ALLOCATE_DEVICE_MASK_BIT
#endif

#if VK_KHR_buffer_device_address
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT_KHR = VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_BIT
#endif

#if VK_KHR_buffer_device_address
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = VK_MEMORY_ALLOCATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT
#endif