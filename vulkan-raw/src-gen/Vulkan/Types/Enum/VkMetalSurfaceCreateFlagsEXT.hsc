{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMetalSurfaceCreateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_metal_surface
type VkMetalSurfaceCreateFlagsEXT = VkFlags
#endif