{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureCompatibilityKHR where

import Data.Int



#if VK_KHR_acceleration_structure
type VkAccelerationStructureCompatibilityKHR = #{type int}
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_COMPATIBILITY_COMPATIBLE_KHR = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_COMPATIBILITY_INCOMPATIBLE_KHR = 1
#endif