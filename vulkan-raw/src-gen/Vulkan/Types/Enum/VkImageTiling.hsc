{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageTiling where

import Data.Int



type VkImageTiling = #{type int}

pattern VK_IMAGE_TILING_OPTIMAL :: (Eq a, Num a) => a
pattern VK_IMAGE_TILING_OPTIMAL = 0

pattern VK_IMAGE_TILING_LINEAR :: (Eq a, Num a) => a
pattern VK_IMAGE_TILING_LINEAR = 1

#if VK_EXT_image_drm_format_modifier
pattern VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_TILING_DRM_FORMAT_MODIFIER_EXT = 1000158000
#endif