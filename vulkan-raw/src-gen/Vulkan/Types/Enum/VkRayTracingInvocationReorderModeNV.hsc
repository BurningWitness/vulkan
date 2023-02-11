{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRayTracingInvocationReorderModeNV where

import Data.Int



#if VK_NV_ray_tracing_invocation_reorder
type VkRayTracingInvocationReorderModeNV = #{type int}
#endif

#if VK_NV_ray_tracing_invocation_reorder
pattern VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_INVOCATION_REORDER_MODE_NONE_NV = 0
#endif

#if VK_NV_ray_tracing_invocation_reorder
pattern VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_INVOCATION_REORDER_MODE_REORDER_NV = 1
#endif