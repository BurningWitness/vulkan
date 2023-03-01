{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkImageCompressionFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_image_compression_control
type VkImageCompressionFlagsEXT = VkFlags
#endif