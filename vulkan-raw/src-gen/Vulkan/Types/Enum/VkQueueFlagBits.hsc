{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkQueueFlagBits where

import Vulkan.Types.Base



type VkQueueFlagBits = VkFlags

-- | Queue supports graphics operations
pattern VK_QUEUE_GRAPHICS_BIT :: (Eq a, Num a) => a
pattern VK_QUEUE_GRAPHICS_BIT = 1

-- | Queue supports compute operations
pattern VK_QUEUE_COMPUTE_BIT :: (Eq a, Num a) => a
pattern VK_QUEUE_COMPUTE_BIT = 2

-- | Queue supports transfer operations
pattern VK_QUEUE_TRANSFER_BIT :: (Eq a, Num a) => a
pattern VK_QUEUE_TRANSFER_BIT = 4

-- | Queue supports sparse resource memory management operations
pattern VK_QUEUE_SPARSE_BINDING_BIT :: (Eq a, Num a) => a
pattern VK_QUEUE_SPARSE_BINDING_BIT = 8

#if VK_VERSION_1_1
-- | Queues may support protected operations
pattern VK_QUEUE_PROTECTED_BIT :: (Eq a, Num a) => a
pattern VK_QUEUE_PROTECTED_BIT = 16
#endif

#if VK_KHR_video_decode_queue
pattern VK_QUEUE_VIDEO_DECODE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_VIDEO_DECODE_BIT_KHR = 32
#endif

#if VK_KHR_video_encode_queue
pattern VK_QUEUE_VIDEO_ENCODE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_QUEUE_VIDEO_ENCODE_BIT_KHR = 64
#endif

#if VK_NV_optical_flow
pattern VK_QUEUE_OPTICAL_FLOW_BIT_NV :: (Eq a, Num a) => a
pattern VK_QUEUE_OPTICAL_FLOW_BIT_NV = 256
#endif