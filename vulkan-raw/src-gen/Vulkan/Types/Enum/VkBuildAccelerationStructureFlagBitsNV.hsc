{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsNV where

import Data.Int
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagBitsKHR



#if VK_NV_ray_tracing
type VkBuildAccelerationStructureFlagBitsNV = VkBuildAccelerationStructureFlagBitsKHR
#endif