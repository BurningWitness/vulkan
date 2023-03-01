{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkVideoEncodeH264InputModeFlagsEXT where

import Vulkan.Types.Base



#if VK_EXT_video_encode_h264
type VkVideoEncodeH264InputModeFlagsEXT = VkFlags
#endif