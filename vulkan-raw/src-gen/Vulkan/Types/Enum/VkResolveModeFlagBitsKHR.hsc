{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkResolveModeFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_depth_stencil_resolve
type VkResolveModeFlagBitsKHR = VkFlags
#endif