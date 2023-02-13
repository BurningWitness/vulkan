{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShaderFloatControlsIndependence where

import Data.Int



#if VK_VERSION_1_2
type VkShaderFloatControlsIndependence = #{type int}
#endif

#if VK_VERSION_1_2
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY :: (Eq a, Num a) => a
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY = 0
#endif

#if VK_VERSION_1_2
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL :: (Eq a, Num a) => a
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL = 1
#endif

#if VK_VERSION_1_2
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE :: (Eq a, Num a) => a
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE = 2
#endif

#if VK_VERSION_1_2
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_32_BIT_ONLY_KHR = 0
#endif

#if VK_VERSION_1_2
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_ALL_KHR = 1
#endif

#if VK_VERSION_1_2
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR :: (Eq a, Num a) => a
pattern VK_SHADER_FLOAT_CONTROLS_INDEPENDENCE_NONE_KHR = 2
#endif