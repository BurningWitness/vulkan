{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_protected_access

module Vulkan.Ext.VK_EXT_pipeline_protected_access
  ( pattern VK_EXT_PIPELINE_PROTECTED_ACCESS_SPEC_VERSION
  , pattern VK_EXT_PIPELINE_PROTECTED_ACCESS_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_PROTECTED_ACCESS_FEATURES_EXT
  , pattern VK_PIPELINE_CREATE_NO_PROTECTED_ACCESS_BIT_EXT
  , pattern VK_PIPELINE_CREATE_PROTECTED_ACCESS_ONLY_BIT_EXT
  , VkPhysicalDevicePipelineProtectedAccessFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePipelineProtectedAccessFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PIPELINE_PROTECTED_ACCESS_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PIPELINE_PROTECTED_ACCESS_SPEC_VERSION = 1

pattern VK_EXT_PIPELINE_PROTECTED_ACCESS_EXTENSION_NAME :: CString
pattern VK_EXT_PIPELINE_PROTECTED_ACCESS_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PIPELINE_PROTECTED_ACCESS_EXTENSION_NAME = Ptr ("VK_EXT_pipeline_protected_access\0"##)

#else

module Vulkan.Ext.VK_EXT_pipeline_protected_access where

#endif