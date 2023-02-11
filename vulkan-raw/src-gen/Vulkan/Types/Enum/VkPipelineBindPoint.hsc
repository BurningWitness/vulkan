{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineBindPoint where

import Data.Int



type VkPipelineBindPoint = #{type int}

pattern VK_PIPELINE_BIND_POINT_GRAPHICS :: (Eq a, Num a) => a
pattern VK_PIPELINE_BIND_POINT_GRAPHICS = 0

pattern VK_PIPELINE_BIND_POINT_COMPUTE :: (Eq a, Num a) => a
pattern VK_PIPELINE_BIND_POINT_COMPUTE = 1

#if VK_NV_ray_tracing
pattern VK_PIPELINE_BIND_POINT_RAY_TRACING_NV :: (Eq a, Num a) => a
pattern VK_PIPELINE_BIND_POINT_RAY_TRACING_NV = VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR :: (Eq a, Num a) => a
pattern VK_PIPELINE_BIND_POINT_RAY_TRACING_KHR = 1000165000
#endif

#if VK_HUAWEI_subpass_shading
pattern VK_PIPELINE_BIND_POINT_SUBPASS_SHADING_HUAWEI :: (Eq a, Num a) => a
pattern VK_PIPELINE_BIND_POINT_SUBPASS_SHADING_HUAWEI = 1000369003
#endif