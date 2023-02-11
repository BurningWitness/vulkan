{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRayTracingShaderGroupTypeKHR where

import Data.Int



#if VK_KHR_ray_tracing_pipeline
type VkRayTracingShaderGroupTypeKHR = #{type int}
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR = 0
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR = 1
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR = 2
#endif

#if VK_NV_ray_tracing
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_NV = VK_RAY_TRACING_SHADER_GROUP_TYPE_GENERAL_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_NV = VK_RAY_TRACING_SHADER_GROUP_TYPE_TRIANGLES_HIT_GROUP_KHR
#endif

#if VK_NV_ray_tracing
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV :: (Eq a, Num a) => a
pattern VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_NV = VK_RAY_TRACING_SHADER_GROUP_TYPE_PROCEDURAL_HIT_GROUP_KHR
#endif