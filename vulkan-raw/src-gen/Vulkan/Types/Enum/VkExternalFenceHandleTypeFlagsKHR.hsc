{-# LANGUAGE CPP #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagsKHR where

import Data.Int
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlags



#if VK_KHR_external_fence_capabilities
type VkExternalFenceHandleTypeFlagsKHR = VkExternalFenceHandleTypeFlags
#endif