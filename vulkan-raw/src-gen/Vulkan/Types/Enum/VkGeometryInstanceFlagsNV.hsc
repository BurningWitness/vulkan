{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkGeometryInstanceFlagsNV where

import Vulkan.Types.Base



#if VK_NV_ray_tracing
type VkGeometryInstanceFlagsNV = VkFlags
#endif