{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_semaphore_capabilities
type VkExternalSemaphoreHandleTypeFlagBitsKHR = VkFlags
#endif