{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineShaderStageCreateFlagBits where

import Vulkan.Types.Base



type VkPipelineShaderStageCreateFlagBits = VkFlags

#if VK_VERSION_1_3 || (VK_EXT_subgroup_size_control)
pattern VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT = 1
#endif

#if VK_VERSION_1_3 || (VK_EXT_subgroup_size_control)
pattern VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT :: (Eq a, Num a) => a
pattern VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT = 2
#endif

#if VK_EXT_subgroup_size_control
pattern VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_SHADER_STAGE_CREATE_ALLOW_VARYING_SUBGROUP_SIZE_BIT_EXT = 1
#endif

#if VK_EXT_subgroup_size_control
pattern VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PIPELINE_SHADER_STAGE_CREATE_REQUIRE_FULL_SUBGROUPS_BIT_EXT = 2
#endif