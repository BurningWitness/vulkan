{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkFormatFeatureFlags2 where

import Vulkan.Types.Base



#if VK_VERSION_1_3
type VkFormatFeatureFlags2 = VkFlags64
#endif