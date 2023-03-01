{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCompilerControlFlagBitsAMD where

import Vulkan.Types.Base



#if VK_AMD_pipeline_compiler_control
type VkPipelineCompilerControlFlagBitsAMD = VkFlags
#endif