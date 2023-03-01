{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageCompressionFixedRateFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_image_compression_control
type VkImageCompressionFixedRateFlagBitsEXT = VkFlags
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_NONE_EXT = 0
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_1BPC_BIT_EXT = 1
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_2BPC_BIT_EXT = 2
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_3BPC_BIT_EXT = 4
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_4BPC_BIT_EXT = 8
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_5BPC_BIT_EXT = 16
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_6BPC_BIT_EXT = 32
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_7BPC_BIT_EXT = 64
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_8BPC_BIT_EXT = 128
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_9BPC_BIT_EXT = 256
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_10BPC_BIT_EXT = 512
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_11BPC_BIT_EXT = 1024
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_12BPC_BIT_EXT = 2048
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_13BPC_BIT_EXT = 4096
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_14BPC_BIT_EXT = 8192
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_15BPC_BIT_EXT = 16384
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_16BPC_BIT_EXT = 32768
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_17BPC_BIT_EXT = 65536
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_18BPC_BIT_EXT = 131072
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_19BPC_BIT_EXT = 262144
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_20BPC_BIT_EXT = 524288
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_21BPC_BIT_EXT = 1048576
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_22BPC_BIT_EXT = 2097152
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_23BPC_BIT_EXT = 4194304
#endif

#if VK_EXT_image_compression_control
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT :: (Eq a, Num a) => a
pattern VK_IMAGE_COMPRESSION_FIXED_RATE_24BPC_BIT_EXT = 8388608
#endif