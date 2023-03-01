{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSurfaceTransformFlagBitsKHR where

import Vulkan.Types.Base



#if VK_KHR_surface
type VkSurfaceTransformFlagBitsKHR = VkFlags
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_IDENTITY_BIT_KHR = 1
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_ROTATE_90_BIT_KHR = 2
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_ROTATE_180_BIT_KHR = 4
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_ROTATE_270_BIT_KHR = 8
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_BIT_KHR = 16
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_90_BIT_KHR = 32
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_180_BIT_KHR = 64
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_HORIZONTAL_MIRROR_ROTATE_270_BIT_KHR = 128
#endif

#if VK_KHR_surface
pattern VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR :: (Eq a, Num a) => a
pattern VK_SURFACE_TRANSFORM_INHERIT_BIT_KHR = 256
#endif