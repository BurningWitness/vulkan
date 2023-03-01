{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_features

module Vulkan.Ext.VK_EXT_validation_features
  ( pattern VK_EXT_VALIDATION_FEATURES_SPEC_VERSION
  , pattern VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VALIDATION_FEATURES_EXT
  , VkValidationFeaturesEXT (..)
  , VkValidationFeatureEnableEXT
  , pattern VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_EXT
  , pattern VK_VALIDATION_FEATURE_ENABLE_GPU_ASSISTED_RESERVE_BINDING_SLOT_EXT
  , pattern VK_VALIDATION_FEATURE_ENABLE_BEST_PRACTICES_EXT
  , pattern VK_VALIDATION_FEATURE_ENABLE_DEBUG_PRINTF_EXT
  , pattern VK_VALIDATION_FEATURE_ENABLE_SYNCHRONIZATION_VALIDATION_EXT
  , VkValidationFeatureDisableEXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_ALL_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_SHADERS_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_THREAD_SAFETY_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_API_PARAMETERS_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_OBJECT_LIFETIMES_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_CORE_CHECKS_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_UNIQUE_HANDLES_EXT
  , pattern VK_VALIDATION_FEATURE_DISABLE_SHADER_VALIDATION_CACHE_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkValidationFeatureDisableEXT
import Vulkan.Types.Enum.VkValidationFeatureEnableEXT
import Vulkan.Types.Struct.VkValidationFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_VALIDATION_FEATURES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_VALIDATION_FEATURES_SPEC_VERSION = 5

pattern VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME :: CString
pattern VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_VALIDATION_FEATURES_EXTENSION_NAME = Ptr ("VK_EXT_validation_features\0"##)

#else

module Vulkan.Ext.VK_EXT_validation_features where

#endif