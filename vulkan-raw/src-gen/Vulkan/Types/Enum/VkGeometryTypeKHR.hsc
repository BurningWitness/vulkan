{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryTypeKHR where

import Data.Int



#if VK_KHR_acceleration_structure
type VkGeometryTypeKHR = #{type int}
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_TYPE_TRIANGLES_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_TYPE_TRIANGLES_KHR = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_TYPE_AABBS_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_TYPE_AABBS_KHR = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_GEOMETRY_TYPE_INSTANCES_KHR :: (Eq a, Num a) => a
pattern VK_GEOMETRY_TYPE_INSTANCES_KHR = 2
#endif

#if VK_NV_ray_tracing
pattern VK_GEOMETRY_TYPE_TRIANGLES_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_TYPE_TRIANGLES_NV = VK_GEOMETRY_TYPE_TRIANGLES_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_GEOMETRY_TYPE_AABBS_NV :: (Eq a, Num a) => a
pattern VK_GEOMETRY_TYPE_AABBS_NV = VK_GEOMETRY_TYPE_AABBS_KHR
#endif