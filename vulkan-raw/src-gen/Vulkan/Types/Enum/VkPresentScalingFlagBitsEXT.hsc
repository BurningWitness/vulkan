{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkPresentScalingFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_surface_maintenance1
type VkPresentScalingFlagBitsEXT = VkFlags
#endif

#if VK_EXT_surface_maintenance1
pattern VK_PRESENT_SCALING_ONE_TO_ONE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PRESENT_SCALING_ONE_TO_ONE_BIT_EXT = 1
#endif

#if VK_EXT_surface_maintenance1
pattern VK_PRESENT_SCALING_ASPECT_RATIO_STRETCH_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PRESENT_SCALING_ASPECT_RATIO_STRETCH_BIT_EXT = 2
#endif

#if VK_EXT_surface_maintenance1
pattern VK_PRESENT_SCALING_STRETCH_BIT_EXT :: (Eq a, Num a) => a
pattern VK_PRESENT_SCALING_STRETCH_BIT_EXT = 4
#endif