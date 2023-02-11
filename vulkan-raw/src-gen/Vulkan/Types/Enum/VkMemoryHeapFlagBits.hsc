{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryHeapFlagBits where

import Vulkan.Types.Base



type VkMemoryHeapFlagBits = VkFlags

-- | If set, heap represents device memory
pattern VK_MEMORY_HEAP_DEVICE_LOCAL_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_HEAP_DEVICE_LOCAL_BIT = 1

#if VK_VERSION_1_1 || (VK_KHR_device_group_creation)
-- | If set, heap allocations allocate multiple instances by default
pattern VK_MEMORY_HEAP_MULTI_INSTANCE_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_HEAP_MULTI_INSTANCE_BIT = 2
#endif

#if VK_KHR_device_group_creation
pattern VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_MEMORY_HEAP_MULTI_INSTANCE_BIT_KHR = VK_MEMORY_HEAP_MULTI_INSTANCE_BIT
#endif