{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkResolveModeFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_2
type VkResolveModeFlagBits = VkFlags
#endif

#if VK_VERSION_1_2
pattern VK_RESOLVE_MODE_NONE :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_NONE = 0
#endif

#if VK_VERSION_1_2
pattern VK_RESOLVE_MODE_SAMPLE_ZERO_BIT :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_SAMPLE_ZERO_BIT = 1
#endif

#if VK_VERSION_1_2
pattern VK_RESOLVE_MODE_AVERAGE_BIT :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_AVERAGE_BIT = 2
#endif

#if VK_VERSION_1_2
pattern VK_RESOLVE_MODE_MIN_BIT :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_MIN_BIT = 4
#endif

#if VK_VERSION_1_2
pattern VK_RESOLVE_MODE_MAX_BIT :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_MAX_BIT = 8
#endif

#if VK_KHR_depth_stencil_resolve
pattern VK_RESOLVE_MODE_NONE_KHR :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_NONE_KHR = VK_RESOLVE_MODE_NONE
#endif

#if VK_KHR_depth_stencil_resolve
pattern VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_SAMPLE_ZERO_BIT_KHR = VK_RESOLVE_MODE_SAMPLE_ZERO_BIT
#endif

#if VK_KHR_depth_stencil_resolve
pattern VK_RESOLVE_MODE_AVERAGE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_AVERAGE_BIT_KHR = VK_RESOLVE_MODE_AVERAGE_BIT
#endif

#if VK_KHR_depth_stencil_resolve
pattern VK_RESOLVE_MODE_MIN_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_MIN_BIT_KHR = VK_RESOLVE_MODE_MIN_BIT
#endif

#if VK_KHR_depth_stencil_resolve
pattern VK_RESOLVE_MODE_MAX_BIT_KHR :: (Eq a, Num a) => a
pattern VK_RESOLVE_MODE_MAX_BIT_KHR = VK_RESOLVE_MODE_MAX_BIT
#endif