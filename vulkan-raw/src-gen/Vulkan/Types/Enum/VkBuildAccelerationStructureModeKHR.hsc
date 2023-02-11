{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBuildAccelerationStructureModeKHR where

import Data.Int



#if VK_KHR_acceleration_structure
type VkBuildAccelerationStructureModeKHR = #{type int}
#endif

#if VK_KHR_acceleration_structure
pattern VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR :: (Eq a, Num a) => a
pattern VK_BUILD_ACCELERATION_STRUCTURE_MODE_BUILD_KHR = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR :: (Eq a, Num a) => a
pattern VK_BUILD_ACCELERATION_STRUCTURE_MODE_UPDATE_KHR = 1
#endif