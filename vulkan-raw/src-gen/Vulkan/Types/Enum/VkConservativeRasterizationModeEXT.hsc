{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkConservativeRasterizationModeEXT where

import Data.Int



#if VK_EXT_conservative_rasterization
type VkConservativeRasterizationModeEXT = #{type int}
#endif

#if VK_EXT_conservative_rasterization
pattern VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT :: (Eq a, Num a) => a
pattern VK_CONSERVATIVE_RASTERIZATION_MODE_DISABLED_EXT = 0
#endif

#if VK_EXT_conservative_rasterization
pattern VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT :: (Eq a, Num a) => a
pattern VK_CONSERVATIVE_RASTERIZATION_MODE_OVERESTIMATE_EXT = 1
#endif

#if VK_EXT_conservative_rasterization
pattern VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT :: (Eq a, Num a) => a
pattern VK_CONSERVATIVE_RASTERIZATION_MODE_UNDERESTIMATE_EXT = 2
#endif