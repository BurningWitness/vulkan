{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryFlagsNV where

import Data.Int
import Vulkan.Types.Enum.VkGeometryFlagsKHR



#if VK_NV_ray_tracing
type VkGeometryFlagsNV = VkGeometryFlagsKHR
#endif