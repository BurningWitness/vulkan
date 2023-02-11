{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShaderGroupShaderKHR where

import Data.Int



#if VK_KHR_ray_tracing_pipeline
type VkShaderGroupShaderKHR = #{type int}
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_GROUP_SHADER_GENERAL_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_GROUP_SHADER_GENERAL_KHR = 0
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_GROUP_SHADER_CLOSEST_HIT_KHR = 1
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_GROUP_SHADER_ANY_HIT_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_GROUP_SHADER_ANY_HIT_KHR = 2
#endif

#if VK_KHR_ray_tracing_pipeline
pattern VK_SHADER_GROUP_SHADER_INTERSECTION_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_GROUP_SHADER_INTERSECTION_KHR = 3
#endif