{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkDisplayPlaneAlphaFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_display
type VkDisplayPlaneAlphaFlagBitsKHR = VkFlags
#endif

#if VK_KHR_display
pattern VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DISPLAY_PLANE_ALPHA_OPAQUE_BIT_KHR = 1
#endif

#if VK_KHR_display
pattern VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DISPLAY_PLANE_ALPHA_GLOBAL_BIT_KHR = 2
#endif

#if VK_KHR_display
pattern VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_BIT_KHR = 4
#endif

#if VK_KHR_display
pattern VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR :: (Eq a, Num a) => a
pattern VK_DISPLAY_PLANE_ALPHA_PER_PIXEL_PREMULTIPLIED_BIT_KHR = 8
#endif