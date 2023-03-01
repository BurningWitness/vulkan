{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_external_fence_capabilities
type VkExternalFenceHandleTypeFlagBitsKHR = VkFlags
#endif