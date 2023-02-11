{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_provoking_vertex

module Vulkan.Ext.VK_EXT_provoking_vertex
  ( pattern VK_EXT_PROVOKING_VERTEX_SPEC_VERSION
  , pattern VK_EXT_PROVOKING_VERTEX_EXTENSION_NAME
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_PROVOKING_VERTEX_STATE_CREATE_INFO_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_PROVOKING_VERTEX_PROPERTIES_EXT
  , VkPhysicalDeviceProvokingVertexFeaturesEXT (..)
  , VkPhysicalDeviceProvokingVertexPropertiesEXT (..)
  , VkPipelineRasterizationProvokingVertexStateCreateInfoEXT (..)
  , VkProvokingVertexModeEXT
  , pattern VK_PROVOKING_VERTEX_MODE_FIRST_VERTEX_EXT
  , pattern VK_PROVOKING_VERTEX_MODE_LAST_VERTEX_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkProvokingVertexModeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkPhysicalDeviceProvokingVertexFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceProvokingVertexPropertiesEXT
import Vulkan.Types.Struct.VkPipelineRasterizationProvokingVertexStateCreateInfoEXT
import Vulkan.Types.VkFun



pattern VK_EXT_PROVOKING_VERTEX_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_PROVOKING_VERTEX_SPEC_VERSION = 1

pattern VK_EXT_PROVOKING_VERTEX_EXTENSION_NAME :: CString
pattern VK_EXT_PROVOKING_VERTEX_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_PROVOKING_VERTEX_EXTENSION_NAME = Ptr ("VK_EXT_provoking_vertex\0"##)

#else

module Vulkan.Ext.VK_EXT_provoking_vertex where

#endif