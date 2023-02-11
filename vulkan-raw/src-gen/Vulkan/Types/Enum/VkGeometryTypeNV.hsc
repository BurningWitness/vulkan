{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryTypeNV where

import Data.Int
import Vulkan.Types.Enum.VkGeometryTypeKHR



#if VK_NV_ray_tracing
type VkGeometryTypeNV = VkGeometryTypeKHR
#endif