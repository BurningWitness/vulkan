{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR where

import Data.Int



#if VK_KHR_acceleration_structure
type VkCopyAccelerationStructureModeKHR = #{type int}
#endif

#if VK_KHR_acceleration_structure
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR :: (Eq a, Num a) => a
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_KHR = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR :: (Eq a, Num a) => a
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_KHR = 1
#endif

#if VK_KHR_acceleration_structure
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR :: (Eq a, Num a) => a
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_SERIALIZE_KHR = 2
#endif

#if VK_KHR_acceleration_structure
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR :: (Eq a, Num a) => a
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_DESERIALIZE_KHR = 3
#endif

#if VK_KHR_acceleration_structure
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV :: (Eq a, Num a) => a
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_CLONE_NV = 0
#endif

#if VK_KHR_acceleration_structure
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV :: (Eq a, Num a) => a
pattern VK_COPY_ACCELERATION_STRUCTURE_MODE_COMPACT_NV = 1
#endif