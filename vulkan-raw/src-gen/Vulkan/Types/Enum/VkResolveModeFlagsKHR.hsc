{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkResolveModeFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_depth_stencil_resolve
type VkResolveModeFlagsKHR = VkFlags
#endif