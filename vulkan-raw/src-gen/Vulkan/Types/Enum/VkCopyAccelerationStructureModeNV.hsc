{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkCopyAccelerationStructureModeNV where

import Data.Int
import Vulkan.Types.Enum.VkCopyAccelerationStructureModeKHR



#if VK_NV_ray_tracing
type VkCopyAccelerationStructureModeNV = VkCopyAccelerationStructureModeKHR
#endif