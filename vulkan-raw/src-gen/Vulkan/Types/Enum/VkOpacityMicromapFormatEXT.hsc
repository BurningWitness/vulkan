{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpacityMicromapFormatEXT where

import Data.Int



#if VK_EXT_opacity_micromap
type VkOpacityMicromapFormatEXT = #{type int}
#endif

#if VK_EXT_opacity_micromap
pattern VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT :: (Eq a, Num a) => a
pattern VK_OPACITY_MICROMAP_FORMAT_2_STATE_EXT = 1
#endif

#if VK_EXT_opacity_micromap
pattern VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT :: (Eq a, Num a) => a
pattern VK_OPACITY_MICROMAP_FORMAT_4_STATE_EXT = 2
#endif