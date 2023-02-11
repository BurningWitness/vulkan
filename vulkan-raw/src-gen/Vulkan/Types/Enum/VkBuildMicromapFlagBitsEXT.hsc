{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBuildMicromapFlagBitsEXT where

import Vulkan.Types.Base



#if VK_EXT_opacity_micromap
type VkBuildMicromapFlagBitsEXT = VkFlags
#endif

#if VK_EXT_opacity_micromap
pattern VK_BUILD_MICROMAP_PREFER_FAST_TRACE_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUILD_MICROMAP_PREFER_FAST_TRACE_BIT_EXT = 1
#endif

#if VK_EXT_opacity_micromap
pattern VK_BUILD_MICROMAP_PREFER_FAST_BUILD_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUILD_MICROMAP_PREFER_FAST_BUILD_BIT_EXT = 2
#endif

#if VK_EXT_opacity_micromap
pattern VK_BUILD_MICROMAP_ALLOW_COMPACTION_BIT_EXT :: (Eq a, Num a) => a
pattern VK_BUILD_MICROMAP_ALLOW_COMPACTION_BIT_EXT = 4
#endif