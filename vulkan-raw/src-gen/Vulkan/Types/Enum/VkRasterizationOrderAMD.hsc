{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkRasterizationOrderAMD where

import Data.Int



#if VK_AMD_rasterization_order
type VkRasterizationOrderAMD = #{type int}
#endif

#if VK_AMD_rasterization_order
pattern VK_RASTERIZATION_ORDER_STRICT_AMD :: (Eq a, Num a) => a
pattern VK_RASTERIZATION_ORDER_STRICT_AMD = 0
#endif

#if VK_AMD_rasterization_order
pattern VK_RASTERIZATION_ORDER_RELAXED_AMD :: (Eq a, Num a) => a
pattern VK_RASTERIZATION_ORDER_RELAXED_AMD = 1
#endif