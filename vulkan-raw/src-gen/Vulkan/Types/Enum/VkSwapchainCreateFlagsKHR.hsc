{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSwapchainCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_swapchain
type VkSwapchainCreateFlagsKHR = VkFlags
#endif