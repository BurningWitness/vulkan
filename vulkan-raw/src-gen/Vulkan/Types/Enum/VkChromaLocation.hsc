{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkChromaLocation where

import Data.Int



#if VK_VERSION_1_1
type VkChromaLocation = #{type int}
#endif

#if VK_VERSION_1_1
pattern VK_CHROMA_LOCATION_COSITED_EVEN :: (Eq a, Num a) => a
pattern VK_CHROMA_LOCATION_COSITED_EVEN = 0
#endif

#if VK_VERSION_1_1
pattern VK_CHROMA_LOCATION_MIDPOINT :: (Eq a, Num a) => a
pattern VK_CHROMA_LOCATION_MIDPOINT = 1
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_CHROMA_LOCATION_COSITED_EVEN_KHR :: (Eq a, Num a) => a
pattern VK_CHROMA_LOCATION_COSITED_EVEN_KHR = VK_CHROMA_LOCATION_COSITED_EVEN
#endif

#if VK_KHR_sampler_ycbcr_conversion
pattern VK_CHROMA_LOCATION_MIDPOINT_KHR :: (Eq a, Num a) => a
pattern VK_CHROMA_LOCATION_MIDPOINT_KHR = VK_CHROMA_LOCATION_MIDPOINT
#endif