{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBufferCreateFlagBits where

import Vulkan.Types.Base



type VkBufferCreateFlagBits = VkFlags

-- | Buffer should support sparse backing
pattern VK_BUFFER_CREATE_SPARSE_BINDING_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_SPARSE_BINDING_BIT = 1

-- | Buffer should support sparse backing with partial residency
pattern VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_SPARSE_RESIDENCY_BIT = 2

-- | Buffer should support constant data access to physical memory ranges mapped into multiple locations of sparse buffers
pattern VK_BUFFER_CREATE_SPARSE_ALIASED_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_SPARSE_ALIASED_BIT = 4

#if VK_VERSION_1_1
-- | Buffer requires protected memory
pattern VK_BUFFER_CREATE_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_PROTECTED_BIT = 8
#endif

#if VK_VERSION_1_2 || (VK_EXT_buffer_device_address) || (VK_KHR_buffer_device_address)
pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT = 16
#endif

#if VK_EXT_buffer_device_address
pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_EXT = VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT
#endif

#if VK_KHR_buffer_device_address
pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = VK_BUFFER_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT
#endif

#if VK_EXT_descriptor_buffer
pattern VK_BUFFER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUFFER_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 32
#endif