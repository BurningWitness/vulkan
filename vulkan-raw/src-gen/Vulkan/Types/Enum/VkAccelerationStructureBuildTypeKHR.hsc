{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureBuildTypeKHR where

import Data.Int



#if VK_KHR_acceleration_structure
type VkAccelerationStructureBuildTypeKHR = #{type int}
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_KHR = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_DEVICE_KHR = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_BUILD_TYPE_HOST_OR_DEVICE_KHR = 2
#endif