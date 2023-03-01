{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkMemoryDecompressionMethodFlagsNV where

import Vulkan.Types.Base



#if VK_NV_memory_decompression
type VkMemoryDecompressionMethodFlagsNV = VkFlags64
#endif