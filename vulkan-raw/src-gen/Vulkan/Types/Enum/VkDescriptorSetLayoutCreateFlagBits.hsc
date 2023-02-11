{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDescriptorSetLayoutCreateFlagBits where

import Vulkan.Types.Base



type VkDescriptorSetLayoutCreateFlagBits = VkFlags

#if VK_VERSION_1_2 || (VK_EXT_descriptor_indexing)
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT = 2
#endif

#if VK_KHR_push_descriptor
-- | Descriptors are pushed via flink:vkCmdPushDescriptorSetKHR
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_PUSH_DESCRIPTOR_BIT_KHR = 1
#endif

#if VK_EXT_descriptor_indexing
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT_EXT = VK_DESCRIPTOR_SET_LAYOUT_CREATE_UPDATE_AFTER_BIND_POOL_BIT
#endif

#if VK_EXT_descriptor_buffer
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_DESCRIPTOR_BUFFER_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_DESCRIPTOR_BUFFER_BIT_EXT = 16
#endif

#if VK_EXT_descriptor_buffer
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_EMBEDDED_IMMUTABLE_SAMPLERS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_EMBEDDED_IMMUTABLE_SAMPLERS_BIT_EXT = 32
#endif

#if VK_VALVE_mutable_descriptor_type
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_VALVE :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_VALVE = VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_EXT
#endif

#if VK_EXT_mutable_descriptor_type
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_EXT :: (Eq a, Num a) => a
pattern VK_DESCRIPTOR_SET_LAYOUT_CREATE_HOST_ONLY_POOL_BIT_EXT = 4
#endif