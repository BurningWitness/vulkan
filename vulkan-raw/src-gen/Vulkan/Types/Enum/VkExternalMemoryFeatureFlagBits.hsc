{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalMemoryFeatureFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkExternalMemoryFeatureFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT = 1
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT = 2
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT = 4
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_DEDICATED_ONLY_BIT_KHR = 1
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_EXPORTABLE_BIT_KHR = 2
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_MEMORY_FEATURE_IMPORTABLE_BIT_KHR = 4
#endif