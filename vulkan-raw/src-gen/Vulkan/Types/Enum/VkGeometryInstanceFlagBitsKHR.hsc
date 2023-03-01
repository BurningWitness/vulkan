{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryInstanceFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_acceleration_structure
type VkGeometryInstanceFlagBitsKHR = VkFlags
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FACING_CULL_DISABLE_BIT_KHR = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FLIP_FACING_BIT_KHR = 2
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_KHR = 4
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_KHR = 8
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_KHR = 2
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_CULL_DISABLE_BIT_NV = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_TRIANGLE_FRONT_COUNTERCLOCKWISE_BIT_NV = 2
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_FORCE_OPAQUE_BIT_NV = 4
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_FORCE_NO_OPAQUE_BIT_NV = 8
#endif

#if VK_EXT_opacity_micromap
pattern VK_GEOMETRY_INSTANCE_FORCE_OPACITY_MICROMAP_2_STATE_EXT :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_FORCE_OPACITY_MICROMAP_2_STATE_EXT = 16
#endif

#if VK_EXT_opacity_micromap
pattern VK_GEOMETRY_INSTANCE_DISABLE_OPACITY_MICROMAPS_EXT :: (Eq a, Num a) => a
pattern VK_GEOMETRY_INSTANCE_DISABLE_OPACITY_MICROMAPS_EXT = 32
#endif