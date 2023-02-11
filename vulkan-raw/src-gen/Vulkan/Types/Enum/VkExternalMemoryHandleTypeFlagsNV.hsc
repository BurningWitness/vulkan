{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsNV where

import Vulkan.Types.Base



#if VK_NV_external_memory_capabilities
type VkExternalMemoryHandleTypeFlagsNV = VkFlags
#endif