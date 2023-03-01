{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkValidationFeatureEnableEXT where

import Data.Int



#if VK_EXT_validation_features
type VkValidationFeatureEnableEXT = #{type int}
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT = 0
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT = 1
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT = 2
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT = 3
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT = 4
#endif