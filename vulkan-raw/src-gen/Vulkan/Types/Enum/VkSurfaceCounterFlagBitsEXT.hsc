{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSurfaceCounterFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_display_surface_counter
type VkSurfaceCounterFlagBitsEXT = VkFlags
#endif

#if VK_EXT_display_surface_counter
pattern VK_SURFACE_COUNTER_VBLANK_BIT_EXT :: (Eq a, Num a) => a
pattern VK_SURFACE_COUNTER_VBLANK_BIT_EXT = 1
#endif

#if VK_EXT_display_surface_counter
-- | Backwards-compatible alias containing a typo
pattern VK_SURFACE_COUNTER_VBLANK_EXT :: (Eq a, Num a) => a
pattern VK_SURFACE_COUNTER_VBLANK_EXT = VK_SURFACE_COUNTER_VBLANK_BIT_EXT
#endif