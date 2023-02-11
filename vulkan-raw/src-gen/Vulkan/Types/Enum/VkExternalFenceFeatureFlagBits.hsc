{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkExternalFenceFeatureFlagBits where

import Vulkan.Types.Base



#if VK_VERSION_1_1
type VkExternalFenceFeatureFlagBits = VkFlags
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT = 1
#endif

#if VK_VERSION_1_1
pattern VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT = 2
#endif

#if VK_KHR_external_fence_capabilities
pattern VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT_KHR = VK_EXTERNAL_FENCE_FEATURE_EXPORTABLE_BIT
#endif

#if VK_KHR_external_fence_capabilities
pattern VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR :: (Eq a, Num a) => a
pattern VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT_KHR = VK_EXTERNAL_FENCE_FEATURE_IMPORTABLE_BIT
#endif