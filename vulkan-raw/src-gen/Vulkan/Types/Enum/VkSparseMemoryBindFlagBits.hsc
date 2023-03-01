{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkSparseMemoryBindFlagBits where

import Vulkan.Types.Base



type VkSparseMemoryBindFlagBits = VkFlags

-- | Operation binds resource metadata to memory
pattern VK_SPARSE_MEMORY_BIND_METADATA_BIT :: (Eq a, Num a) => a
pattern VK_SPARSE_MEMORY_BIND_METADATA_BIT = 1