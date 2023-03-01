{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkBuildMicromapModeEXT where

import Data.Int



#if VK_EXT_opacity_micromap
type VkBuildMicromapModeEXT = #{type int}
#endif

#if VK_EXT_opacity_micromap
pattern VK_BUILD_MICROMAP_MODE_BUILD_EXT :: (Eq a, Num a) => a
pattern VK_BUILD_MICROMAP_MODE_BUILD_EXT = 0
#endif