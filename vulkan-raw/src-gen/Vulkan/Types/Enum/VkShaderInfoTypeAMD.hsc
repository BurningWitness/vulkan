{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShaderInfoTypeAMD where

import Data.Int



#if VK_AMD_shader_info
type VkShaderInfoTypeAMD = #{type int}
#endif

#if VK_AMD_shader_info
pattern VK_SHADER_INFO_TYPE_STATISTICS_AMD :: (Eq a, Num a) => a
pattern VK_SHADER_INFO_TYPE_STATISTICS_AMD = 0
#endif

#if VK_AMD_shader_info
pattern VK_SHADER_INFO_TYPE_BINARY_AMD :: (Eq a, Num a) => a
pattern VK_SHADER_INFO_TYPE_BINARY_AMD = 1
#endif

#if VK_AMD_shader_info
pattern VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD :: (Eq a, Num a) => a
pattern VK_SHADER_INFO_TYPE_DISASSEMBLY_AMD = 2
#endif