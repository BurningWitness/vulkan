{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_memory_capabilities
type VkExternalMemoryHandleTypeFlagBitsKHR = VkFlags
#endif