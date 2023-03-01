{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSurfaceCounterFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_display_surface_counter
type VkSurfaceCounterFlagsEXT = VkFlags
#endif