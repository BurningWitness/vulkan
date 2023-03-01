{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkXcbSurfaceCreateFlagsKHR where

import Vulkan.Types.Base



#if VK_KHR_xcb_surface
type VkXcbSurfaceCreateFlagsKHR = VkFlags
#endif