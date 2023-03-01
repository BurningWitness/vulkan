{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH264OutputModeFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h264
type VkVideoEncodeH264OutputModeFlagsEXT = VkFlags
#endif