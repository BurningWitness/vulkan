{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkWaylandSurfaceCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_wayland_surface
type VkWaylandSurfaceCreateFlagsKHR = VkFlags
#endif