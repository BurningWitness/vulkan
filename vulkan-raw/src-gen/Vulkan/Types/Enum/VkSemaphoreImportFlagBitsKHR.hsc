{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreImportFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_semaphore
type VkSemaphoreImportFlagBitsKHR = VkFlags
#endif