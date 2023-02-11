{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkExternalSemaphoreHandleTypeFlags



#if VK_KHR_external_semaphore_capabilities
type VkExternalSemaphoreHandleTypeFlagsKHR = VkExternalSemaphoreHandleTypeFlags
#endif