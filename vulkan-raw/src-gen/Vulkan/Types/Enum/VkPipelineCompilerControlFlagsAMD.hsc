{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPipelineCompilerControlFlagsAMD where

import Vulkan.Types.Base



#if VK_AMD_pipeline_compiler_control
type VkPipelineCompilerControlFlagsAMD = VkFlags
#endif