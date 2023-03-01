{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAccelerationStructureMotionInstanceFlagsNV where

import Vulkan.Types.Base



#if VK_NV_ray_tracing_motion_blur
type VkAccelerationStructureMotionInstanceFlagsNV = VkFlags
#endif