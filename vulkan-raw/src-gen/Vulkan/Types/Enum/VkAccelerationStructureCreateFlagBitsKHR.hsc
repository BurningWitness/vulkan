{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureCreateFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_acceleration_structure
type VkAccelerationStructureCreateFlagBitsKHR = VkFlags
#endif

#if VK_KHR_acceleration_structure
pattern VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_CREATE_DEVICE_ADDRESS_CAPTURE_REPLAY_BIT_KHR = 1
#endif

#if VK_EXT_descriptor_buffer
pattern VK_ACCELERATION_STRUCTURE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_CREATE_DESCRIPTOR_BUFFER_CAPTURE_REPLAY_BIT_EXT = 8
#endif

#if VK_NV_ray_tracing_motion_blur
pattern VK_ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV :: (Eq a, Num a) => a
pattern VK_ACCELERATION_STRUCTURE_CREATE_MOTION_BIT_NV = 4
#endif