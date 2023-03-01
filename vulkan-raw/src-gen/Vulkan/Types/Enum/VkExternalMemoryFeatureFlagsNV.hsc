{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryFeatureFlagsNV where

import Vulkan.Types.Base



#if VK_NV_external_memory_capabilities
type VkExternalMemoryFeatureFlagsNV = VkFlags
#endif