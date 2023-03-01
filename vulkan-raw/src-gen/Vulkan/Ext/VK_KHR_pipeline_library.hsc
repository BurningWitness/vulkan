{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_library

module Vulkan.Ext.VK_KHR_pipeline_library
  ( pattern VK_KHR_PIPELINE_LIBRARY_SPEC_VERSION
  , pattern VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME
  , pattern VK_PIPELINE_CREATE_LIBRARY_BIT_KHR
  , pattern VK_STRUCTURE_TYPE_PIPELINE_LIBRARY_CREATE_INFO_KHR
  , VkPipelineLibraryCreateInfoKHR (..)
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPipelineLibraryCreateInfoKHR
import Vulkan.Types.VkFun



pattern VK_KHR_PIPELINE_LIBRARY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_KHR_PIPELINE_LIBRARY_SPEC_VERSION = 1

pattern VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME :: CString
pattern VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME <- (const False -> True)
  where
    VK_KHR_PIPELINE_LIBRARY_EXTENSION_NAME = Ptr ("VK_KHR_pipeline_library\0"##)

#else

module Vulkan.Ext.VK_KHR_pipeline_library where

#endif