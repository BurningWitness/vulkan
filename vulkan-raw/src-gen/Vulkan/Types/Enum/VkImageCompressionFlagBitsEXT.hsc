{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageCompressionFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_image_compression_control
type VkImageCompressionFlagBitsEXT = VkFlags
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_DEFAULT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_DEFAULT_EXT = 0
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_DEFAULT_EXT = 1
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_EXPLICIT_EXT = 2
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_DISABLED_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_DISABLED_EXT = 4
#endif