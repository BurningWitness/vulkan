{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureMotionInstanceTypeNV where

import Data.Int



#if VK_NV_ray_tracing_motion_blur
type VkAccelerationStructureMotionInstanceTypeNV = #{type int}
#endif

#if VK_NV_ray_tracing_motion_blur
pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_STATIC_NV = 0
#endif

#if VK_NV_ray_tracing_motion_blur
pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_MATRIX_MOTION_NV = 1
#endif

#if VK_NV_ray_tracing_motion_blur
pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_MOTION_INSTANCE_TYPE_SRT_MOTION_NV = 2
#endif