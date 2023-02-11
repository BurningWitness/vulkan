{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSemaphoreImportFlagBitsKHR where

import Data.Int
import Vulkan.Types.Enum.VkSemaphoreImportFlagBits



#if VK_KHR_external_semaphore
type VkSemaphoreImportFlagBitsKHR = VkSemaphoreImportFlagBits
#endif