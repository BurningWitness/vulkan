{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRayTracingShaderGroupTypeNV where

import Data.Int



#if VK_NV_ray_tracing
type VkRayTracingShaderGroupTypeNV = #{type int}
#endif