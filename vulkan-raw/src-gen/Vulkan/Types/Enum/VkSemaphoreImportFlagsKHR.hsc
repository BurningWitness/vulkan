{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreImportFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkSemaphoreImportFlags



#if VK_KHR_external_semaphore
type VkSemaphoreImportFlagsKHR = VkSemaphoreImportFlags
#endif