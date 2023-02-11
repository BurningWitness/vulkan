{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkOpacityMicromapSpecialIndexEXT where

import Data.Int



#if VK_EXT_opacity_micromap
type VkOpacityMicromapSpecialIndexEXT = #{type int}
#endif

#if VK_EXT_opacity_micromap
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT :: (Eq a, Num a) => a
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_TRANSPARENT_EXT = -1
#endif

#if VK_EXT_opacity_micromap
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT :: (Eq a, Num a) => a
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_OPAQUE_EXT = -2
#endif

#if VK_EXT_opacity_micromap
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT :: (Eq a, Num a) => a
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_TRANSPARENT_EXT = -3
#endif

#if VK_EXT_opacity_micromap
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT :: (Eq a, Num a) => a
pattern VK_OPACITY_MICROMAP_SPECIAL_INDEX_FULLY_UNKNOWN_OPAQUE_EXT = -4
#endif