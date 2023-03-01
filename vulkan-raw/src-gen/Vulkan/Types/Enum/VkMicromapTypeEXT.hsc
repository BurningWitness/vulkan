{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMicromapTypeEXT where

import Data.Int



#if VK_EXT_opacity_micromap
type VkMicromapTypeEXT = #{type int}
#endif

#if VK_EXT_opacity_micromap
pattern VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT :: (Eq a, Num a) => a
pattern VK_MICROMAP_TYPE_OPACITY_MICROMAP_EXT = 0
#endif