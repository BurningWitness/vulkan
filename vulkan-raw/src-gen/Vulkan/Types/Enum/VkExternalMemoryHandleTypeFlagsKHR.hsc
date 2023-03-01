{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_memory_capabilities
type VkExternalMemoryHandleTypeFlagsKHR = VkFlags
#endif