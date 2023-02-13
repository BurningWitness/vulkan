{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPeerMemoryFeatureFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkPeerMemoryFeatureFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
-- | Can read with vkCmdCopy commands
pattern VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT = 1
#endif

#if VK_VERSION_1_1
-- | Can write with vkCmdCopy commands
pattern VK_PEER_MEMORY_FEATURE_COPY_DST_BIT :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_COPY_DST_BIT = 2
#endif

#if VK_VERSION_1_1
-- | Can read with any access type/command
pattern VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT = 4
#endif

#if VK_VERSION_1_1
-- | Can write with and access type/command
pattern VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT = 8
#endif

#if VK_VERSION_1_1
pattern VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_COPY_SRC_BIT_KHR = 1
#endif

#if VK_VERSION_1_1
pattern VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_COPY_DST_BIT_KHR = 2
#endif

#if VK_VERSION_1_1
pattern VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_GENERIC_SRC_BIT_KHR = 4
#endif

#if VK_VERSION_1_1
pattern VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR :: (Eq a, Num a) => a
pattern VK_PEER_MEMORY_FEATURE_GENERIC_DST_BIT_KHR = 8
#endif