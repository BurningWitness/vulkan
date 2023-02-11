{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageAspectFlagBits where

import Vulkan.Types.Base



type VkImageAspectFlagBits = VkFlags

pattern VK_IMAGE_ASPECT_COLOR_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_COLOR_BIT = 1

pattern VK_IMAGE_ASPECT_DEPTH_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_DEPTH_BIT = 2

pattern VK_IMAGE_ASPECT_STENCIL_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_STENCIL_BIT = 4

pattern VK_IMAGE_ASPECT_METADATA_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_METADATA_BIT = 8

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_IMAGE_ASPECT_PLANE_0_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_PLANE_0_BIT = 16
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_IMAGE_ASPECT_PLANE_1_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_PLANE_1_BIT = 32
#endif

#if VK_VERSION_1_1 || (VK_KHR_sampler_ycbcr_conversion)
pattern VK_IMAGE_ASPECT_PLANE_2_BIT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_PLANE_2_BIT = 64
#endif

#if VK_VERSION_1_3 || (VK_KHR_maintenance4)
pattern VK_IMAGE_ASPECT_NONE :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_NONE = 0
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_IMAGE_ASPECT_PLANE_0_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_PLANE_0_BIT_KHR = VK_IMAGE_ASPECT_PLANE_0_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_IMAGE_ASPECT_PLANE_1_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_PLANE_1_BIT_KHR = VK_IMAGE_ASPECT_PLANE_1_BIT
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_IMAGE_ASPECT_PLANE_2_BIT_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_PLANE_2_BIT_KHR = VK_IMAGE_ASPECT_PLANE_2_BIT
#endif

#if VK_EXT_image_drm_format_modifier
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_0_BIT_EXT = 128
#endif

#if VK_EXT_image_drm_format_modifier
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_1_BIT_EXT = 256
#endif

#if VK_EXT_image_drm_format_modifier
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_2_BIT_EXT = 512
#endif

#if VK_EXT_image_drm_format_modifier
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_MEMORY_PLANE_3_BIT_EXT = 1024
#endif

#if VK_KHR_maintenance4
pattern VK_IMAGE_ASPECT_NONE_KHR :: (Eq a, Num a) => a
pattern VK_IMAGE_ASPECT_NONE_KHR = VK_IMAGE_ASPECT_NONE
#endif