{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureMemoryRequirementsTypeNV where

import Data.Int



#if VK_NV_ray_tracing
type VkAccelerationStructureMemoryRequirementsTypeNV = #{type int}
#endif

#if VK_NV_ray_tracing
pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_OBJECT_NV = 0
#endif

#if VK_NV_ray_tracing
pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_BUILD_SCRATCH_NV = 1
#endif

#if VK_NV_ray_tracing
pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_MEMORY_REQUIREMENTS_TYPE_UPDATE_SCRATCH_NV = 2
#endif