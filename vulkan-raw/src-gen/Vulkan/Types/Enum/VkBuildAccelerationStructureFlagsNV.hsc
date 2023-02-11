{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBuildAccelerationStructureFlagsNV where

import Data.Int
import Vulkan.Types.Enum.VkBuildAccelerationStructureFlagsKHR



#if VK_NV_ray_tracing
type VkBuildAccelerationStructureFlagsNV = VkBuildAccelerationStructureFlagsKHR
#endif