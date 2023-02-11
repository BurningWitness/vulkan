{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkShaderCorePropertiesFlagBitsAMD where

import Vulkan.Types.Base



#if VK_AMD_shader_core_properties2
type VkShaderCorePropertiesFlagBitsAMD = VkFlags
#endif