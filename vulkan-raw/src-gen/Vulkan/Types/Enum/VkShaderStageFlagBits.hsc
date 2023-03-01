{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShaderStageFlagBits where

import Vulkan.Types.Base



type VkShaderStageFlagBits = VkFlags

pattern VK_SHADER_STAGE_VERTEX_BIT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_VERTEX_BIT = 1

pattern VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_TESSELLATION_CONTROL_BIT = 2

pattern VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_TESSELLATION_EVALUATION_BIT = 4

pattern VK_SHADER_STAGE_GEOMETRY_BIT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_GEOMETRY_BIT = 8

pattern VK_SHADER_STAGE_FRAGMENT_BIT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_FRAGMENT_BIT = 16

pattern VK_SHADER_STAGE_COMPUTE_BIT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_COMPUTE_BIT = 32

pattern VK_SHADER_STAGE_ALL_GRAPHICS :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_ALL_GRAPHICS = 31

pattern VK_SHADER_STAGE_ALL :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_ALL = 2147483647

#if VK_NV_ray_tracing
pattern VK_SHADER_STAGE_RAYGEN_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_RAYGEN_BIT_NV = 256
#endif

#if VK_NV_ray_tracing
pattern VK_SHADER_STAGE_ANY_HIT_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_ANY_HIT_BIT_NV = 512
#endif

#if VK_NV_ray_tracing
pattern VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_CLOSEST_HIT_BIT_NV = 1024
#endif

#if VK_NV_ray_tracing
pattern VK_SHADER_STAGE_MISS_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_MISS_BIT_NV = 2048
#endif

#if VK_NV_ray_tracing
pattern VK_SHADER_STAGE_INTERSECTION_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_INTERSECTION_BIT_NV = 4096
#endif

#if VK_NV_ray_tracing
pattern VK_SHADER_STAGE_CALLABLE_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_CALLABLE_BIT_NV = 8192
#endif

#if VK_NV_mesh_shader
pattern VK_SHADER_STAGE_TASK_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_TASK_BIT_NV = 64
#endif

#if VK_NV_mesh_shader
pattern VK_SHADER_STAGE_MESH_BIT_NV :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_MESH_BIT_NV = 128
#endif

#if VK_EXT_mesh_shader
pattern VK_SHADER_STAGE_TASK_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_TASK_BIT_EXT = 64
#endif

#if VK_EXT_mesh_shader
pattern VK_SHADER_STAGE_MESH_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_MESH_BIT_EXT = 128
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_STAGE_RAYGEN_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_RAYGEN_BIT_KHR = 256
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_STAGE_ANY_HIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_ANY_HIT_BIT_KHR = 512
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_CLOSEST_HIT_BIT_KHR = 1024
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_STAGE_MISS_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_MISS_BIT_KHR = 2048
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_STAGE_INTERSECTION_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_INTERSECTION_BIT_KHR = 4096
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_STAGE_CALLABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_CALLABLE_BIT_KHR = 8192
#endif

#if VK_HUAWEI_subpass_shading
pattern VK_SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_SUBPASS_SHADING_BIT_HUAWEI = 16384
#endif

#if VK_HUAWEI_cluster_culling_shader
pattern VK_SHADER_STAGE_CLUSTER_CULLING_BIT_HUAWEI :: (Eq a, Num a) => a
pattern VK_SHADER_STAGE_CLUSTER_CULLING_BIT_HUAWEI = 524288
#endif