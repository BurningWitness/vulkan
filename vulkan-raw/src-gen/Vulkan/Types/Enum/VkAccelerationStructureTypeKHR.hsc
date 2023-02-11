{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureTypeKHR where

import Data.Int



#if VK_KHR_acceleration_structure
type VkAccelerationStructureTypeKHR = #{type int}
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_TYPE_GENERIC_KHR = 2
#endif

#if VK_NV_ray_tracing
pattern VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_NV = VK_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_NV = VK_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL_KHR
#endif