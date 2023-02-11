{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_pipeline_library_group_handles

module Vulkan.Ext.VK_EXT_pipeline_library_group_handles
  ( pattern VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_SPEC_VERSION
  , pattern VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PIPELINE_LIBRARY_GROUP_HANDLES_FEATURES_EXT
  , VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDevicePipelineLibraryGroupHandlesFeaturesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_SPEC_VERSION = 1

pattern VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_EXTENSION_NAME :: CString
pattern VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PIPELINE_LIBRARY_GROUP_HANDLES_EXTENSION_NAME = Ptr ("VK_EXT_pipeline_library_group_handles\0"##)

#else

module Vulkan.Ext.VK_EXT_pipeline_library_group_handles where

#endif