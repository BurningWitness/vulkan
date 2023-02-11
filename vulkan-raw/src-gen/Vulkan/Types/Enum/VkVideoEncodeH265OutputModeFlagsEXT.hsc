{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH265OutputModeFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h265
type VkVideoEncodeH265OutputModeFlagsEXT = VkFlags
#endif