{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_acceleration_structure
type VkGeometryFlagBitsKHR = VkFlags
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_OPAQUE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_OPAQUE_BIT_KHR = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR = 2
#endif

#if VK_NV_ray_tracing
pattern VK_GEOMETRY_OPAQUE_BIT_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_OPAQUE_BIT_NV = VK_GEOMETRY_OPAQUE_BIT_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_NV = VK_GEOMETRY_NO_DUPLICATE_ANY_HIT_INVOCATION_BIT_KHR
#endif