{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPresentGravityFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_surface_maintenance1
type VkPresentGravityFlagBitsEXT = VkFlags
#endif

#if VK_EXT_surface_maintenance1
pattern VK_PRESENT_GRAVITY_MIN_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PRESENT_GRAVITY_MIN_BIT_EXT = 1
#endif

#if VK_EXT_surface_maintenance1
pattern VK_PRESENT_GRAVITY_MAX_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PRESENT_GRAVITY_MAX_BIT_EXT = 2
#endif

#if VK_EXT_surface_maintenance1
pattern VK_PRESENT_GRAVITY_CENTERED_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PRESENT_GRAVITY_CENTERED_BIT_EXT = 4
#endif