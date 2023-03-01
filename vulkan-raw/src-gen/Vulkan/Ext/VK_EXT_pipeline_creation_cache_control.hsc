{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_creation_cache_control

module Vulkan.Ext.VK_EXT_pipeline_creation_cache_control
  ( pattern VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_SPEC_VERSION
  , pattern VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_CREATION_CACHE_CONTROL_FEATURES_EXT
  , VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
  , pattern VK_PIPELINE_CREATE_FAIL_ON_PIPELINE_COMPILE_REQUIRED_BIT_EXT
  , pattern VK_PIPELINE_CREATE_EARLY_RETURN_ON_FAILURE_BIT_EXT
  , pattern VK_PIPELINE_COMPILE_REQUIRED_EXT
  , pattern VK_ERROR_PIPELINE_COMPILE_REQUIRED_EXT
  , pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT
  , VkPipelineCacheCreateFlagBits
  , pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT
  , pattern VK_PIPELINE_CACHE_CREATE_EXTERNALLY_SYNCHRONIZED_BIT_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCacheCreateFlagBits
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkResult
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePipelineCreationCacheControlFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_SPEC_VERSION = 3

pattern VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME :: CString
pattern VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PIPELINE_CREATION_CACHE_CONTROL_EXTENSION_NAME = Ptr ("VK_EXT_pipeline_creation_cache_control\0"##)

#else

module Vulkan.Ext.VK_EXT_pipeline_creation_cache_control where

#endif