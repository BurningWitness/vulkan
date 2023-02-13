{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFormatFeatureFlagBits2KHR where

import Vulkan.Types.Base



#if VK_KHR_format_feature_flags2
type VkFormatFeatureFlagBits2KHR = VkFlags64
#endif