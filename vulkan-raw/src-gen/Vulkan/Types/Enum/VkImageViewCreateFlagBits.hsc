{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageViewCreateFlagBits where

import Vulkan.Types.Base



type VkImageViewCreateFlagBits = VkFlags

#if VK_EXT_fragment_density_map
pattern VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DYNAMIC_BIT_EXT = 1
#endif

#if VK_EXT_descriptor_buffer
pattern VK_IMAGE_VIEW_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 4
#endif

#if VK_EXT_fragment_density_map2
pattern VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_VIEW_CREATE_FRAGMENT_DENSITY_MAP_DEFERRED_BIT_EXT = 2
#endif