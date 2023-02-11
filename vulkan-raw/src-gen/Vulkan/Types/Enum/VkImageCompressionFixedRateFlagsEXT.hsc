{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageCompressionFixedRateFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_image_compression_control
type VkImageCompressionFixedRateFlagsEXT = VkFlags
#endif