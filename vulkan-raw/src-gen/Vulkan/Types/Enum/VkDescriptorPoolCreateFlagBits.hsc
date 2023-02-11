{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorPoolCreateFlagBits where

import Vulkan.Types.Base



type VkDescriptorPoolCreateFlagBits = VkFlags

-- | Descriptor sets may be freed individually
pattern VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_POOL_CREATE_FREE_DESCRIPTOR_SET_BIT = 1

#if VK_VERSION_1_2 || (VK_EXT_descriptor_indexing)
pattern VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT = 2
#endif

#if VK_EXT_descriptor_indexing
pattern VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT_EXT = VK_DESCRIPTOR_POOL_CREATE_UPDATE_AFTER_BIND_BIT
#endif

#if VK_VALVE_mutable_descriptor_type
pattern VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_VALVE :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_VALVE = VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_EXT
#endif

#if VK_EXT_mutable_descriptor_type
pattern VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_POOL_CREATE_HOST_ONLY_BIT_EXT = 4
#endif