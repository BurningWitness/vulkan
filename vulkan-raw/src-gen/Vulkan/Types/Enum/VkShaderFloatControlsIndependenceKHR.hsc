{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShaderFloatControlsIndependenceKHR where

import Data.Int



#if VK_KHR_shader_float_controls
type VkShaderFloatControlsIndependenceKHR = #{type int}
#endif