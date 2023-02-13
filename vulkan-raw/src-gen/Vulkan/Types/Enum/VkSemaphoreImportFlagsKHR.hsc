{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreImportFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_semaphore
type VkSemaphoreImportFlagsKHR = VkFlags
#endif