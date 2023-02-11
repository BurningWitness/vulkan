{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRayTracingShaderGroupTypeNV where

import Data.Int
import Vulkan.Types.Enum.VkRayTracingShaderGroupTypeKHR



#if VK_NV_ray_tracing
type VkRayTracingShaderGroupTypeNV = VkRayTracingShaderGroupTypeKHR
#endif