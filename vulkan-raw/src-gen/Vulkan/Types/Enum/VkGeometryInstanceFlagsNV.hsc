{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryInstanceFlagsNV where

import Data.Int
import Vulkan.Types.Enum.VkGeometryInstanceFlagsKHR



#if VK_NV_ray_tracing
type VkGeometryInstanceFlagsNV = VkGeometryInstanceFlagsKHR
#endif