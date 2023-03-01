{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_validation_cache

module Vulkan.Ext.VK_EXT_validation_cache
  ( pattern VK_EXT_VALIDATION_CACHE_SPEC_VERSION
  , pattern VK_EXT_VALIDATION_CACHE_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_VALIDATION_CACHE_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_SHADER_MODULE_VALIDATION_CACHE_CREATE_INFO_EXT
  , pattern VK_OBJECT_TYPE_VALIDATION_CACHE_EXT
  , VkValidationCacheEXT_T
  , VkValidationCacheEXT
  , VkValidationCacheCreateInfoEXT (..)
  , VkShaderModuleValidationCacheCreateInfoEXT (..)
  , VkValidationCacheHeaderVersionEXT
  , pattern VK_VALIDATION_CACHE_HEADER_VERSION_ONE_EXT
  , VkValidationCacheCreateFlagsEXT
  , VkCreateValidationCacheEXT
  , vkFunCreateValidationCacheEXT
  , VkDestroyValidationCacheEXT
  , vkFunDestroyValidationCacheEXT
  , VkMergeValidationCachesEXT
  , vkFunMergeValidationCachesEXT
  , VkGetValidationCacheDataEXT
  , vkFunGetValidationCacheDataEXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkObjectType
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkValidationCacheCreateFlagsEXT
import Vulkan.Types.Enum.VkValidationCacheHeaderVersionEXT
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkShaderModuleValidationCacheCreateInfoEXT
import Vulkan.Types.Struct.VkValidationCacheCreateInfoEXT
import Vulkan.Types.Command.VkCreateValidationCacheEXT
import Vulkan.Types.Command.VkDestroyValidationCacheEXT
import Vulkan.Types.Command.VkGetValidationCacheDataEXT
import Vulkan.Types.Command.VkMergeValidationCachesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_VALIDATION_CACHE_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_VALIDATION_CACHE_SPEC_VERSION = 1

pattern VK_EXT_VALIDATION_CACHE_EXTENSION_NAME :: CString
pattern VK_EXT_VALIDATION_CACHE_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_VALIDATION_CACHE_EXTENSION_NAME = Ptr ("VK_EXT_validation_cache\0"##)

#else

module Vulkan.Ext.VK_EXT_validation_cache where

#endif