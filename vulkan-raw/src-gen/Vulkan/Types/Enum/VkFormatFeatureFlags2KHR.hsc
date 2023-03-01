{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFormatFeatureFlags2KHR where

import Vulkan.Types.Base



#if VK_KHR_format_feature_flags2
type VkFormatFeatureFlags2KHR = VkFlags64
#endif