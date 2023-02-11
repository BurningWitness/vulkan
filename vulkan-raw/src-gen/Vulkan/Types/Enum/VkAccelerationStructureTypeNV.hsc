{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureTypeNV where

import Data.Int
import Vulkan.Types.Enum.VkAccelerationStructureTypeKHR



#if VK_NV_ray_tracing
type VkAccelerationStructureTypeNV = VkAccelerationStructureTypeKHR
#endif