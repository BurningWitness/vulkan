{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryFlagBitsNV where

import Data.Int
import Vulkan.Types.Enum.VkGeometryFlagBitsKHR



#if VK_NV_ray_tracing
type VkGeometryFlagBitsNV = VkGeometryFlagBitsKHR
#endif