{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlags



#if VK_KHR_external_memory_capabilities
type VkExternalMemoryHandleTypeFlagsKHR = VkExternalMemoryHandleTypeFlags
#endif