{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkValidationFeatureDisableEXT where

import Data.Int



#if VK_EXT_validation_features
type VkValidationFeatureDisableEXT = #{type int}
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_ALL_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_ALL_EXT = 0
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT = 1
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT = 2
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT = 3
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT = 4
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT = 5
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT = 6
#endif

#if VK_EXT_validation_features
pattern VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT :: (Eq a, Num a) => a
pattern VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT = 7
#endif