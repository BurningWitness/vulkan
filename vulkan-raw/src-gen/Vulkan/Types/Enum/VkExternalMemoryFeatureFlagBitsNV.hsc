{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryFeatureFlagBitsNV where

import Vulkan.Types.Base



#if VK_NV_external_memory_capabilities
type VkExternalMemoryFeatureFlagBitsNV = VkFlags
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_NV = 1
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_NV = 2
#endif

#if VK_NV_external_memory_capabilities
pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_NV = 4
#endif