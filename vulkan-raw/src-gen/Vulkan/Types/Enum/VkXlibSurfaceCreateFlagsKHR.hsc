{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkXlibSurfaceCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_xlib_surface
type VkXlibSurfaceCreateFlagsKHR = VkFlags
#endif