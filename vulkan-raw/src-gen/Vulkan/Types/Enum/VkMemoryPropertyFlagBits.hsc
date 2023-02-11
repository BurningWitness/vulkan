{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryPropertyFlagBits where

import Vulkan.Types.Base



type VkMemoryPropertyFlagBits = VkFlags

-- | If otherwise stated, then allocate memory on device
pattern VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT = 1

-- | Memory is mappable by host
pattern VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT = 2

-- | Memory will have i/o coherency. If not set, application may need to use vkFlushMappedMemoryRanges and vkInvalidateMappedMemoryRanges to flush/invalidate host cache
pattern VK_MEMORY_PROPERTY_HOST_COHERENT_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_HOST_COHERENT_BIT = 4

-- | Memory will be cached by the host
pattern VK_MEMORY_PROPERTY_HOST_CACHED_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_HOST_CACHED_BIT = 8

-- | Memory may be allocated by the driver when it is required
pattern VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_LAZILY_ALLOCATED_BIT = 16

#if VK_VERSION_1_1
-- | Memory is protected
pattern VK_MEMORY_PROPERTY_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_PROTECTED_BIT = 32
#endif

#if VK_AMD_device_coherent_memory
pattern VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_DEVICE_COHERENT_BIT_AMD = 64
#endif

#if VK_AMD_device_coherent_memory
pattern VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_DEVICE_UNCACHED_BIT_AMD = 128
#endif

#if VK_NV_external_memory_rdma
pattern VK_MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV :: (Eq a, Num a) => a
pattern VK_MEMORY_PROPERTY_RDMA_CAPABLE_BIT_NV = 256
#endif