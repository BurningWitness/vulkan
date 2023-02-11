{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryInstanceFlagBitsNV where

import Data.Int
import Vulkan.Types.Enum.VkGeometryInstanceFlagBitsKHR



#if VK_NV_ray_tracing
type VkGeometryInstanceFlagBitsNV = VkGeometryInstanceFlagBitsKHR
#endif