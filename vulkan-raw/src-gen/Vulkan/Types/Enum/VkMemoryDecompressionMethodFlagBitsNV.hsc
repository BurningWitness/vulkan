{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryDecompressionMethodFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_memory_decompression
type VkMemoryDecompressionMethodFlagBitsNV = VkFlags64
#endif

#if VK_NV_memory_decompression
pattern VK_MEMORY_DECOMPRESSION_METHOD_GDEFLATE_1_0_BIT_NV :: (Eq a, Num a) => a
pattern VK_MEMORY_DECOMPRESSION_METHOD_GDEFLATE_1_0_BIT_NV = 1
#endif