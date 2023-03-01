{-# LANGUAGE CPP #-}
{-# LANGUAGE MagicHash #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ViewPatterns #-}

#include <vulkan/vulkan.h>

#if VK_EXT_graphics_pipeline_library

module Vulkan.Ext.VK_EXT_graphics_pipeline_library
  ( pattern VK_EXT_GRAPHICS_PIPELINE_LIBRARY_SPEC_VERSION
  , pattern VK_EXT_GRAPHICS_PIPELINE_LIBRARY_EXTENSION_NAME
  , VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT (..)
  , VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT (..)
  , VkGraphicsPipelineLibraryCreateInfoEXT (..)
  , VkGraphicsPipelineLibraryFlagBitsEXT
  , pattern VK_GRAPHICS_PIPELINE_LIBRARY_VERTEX_INPUT_INTERFACE_BIT_EXT
  , pattern VK_GRAPHICS_PIPELINE_LIBRARY_PRE_RASTERIZATION_SHADERS_BIT_EXT
  , pattern VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_SHADER_BIT_EXT
  , pattern VK_GRAPHICS_PIPELINE_LIBRARY_FRAGMENT_OUTPUT_INTERFACE_BIT_EXT
  , VkGraphicsPipelineLibraryFlagsEXT
  , VkPipelineLayoutCreateFlagBits
  , pattern VK_PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_FEATURES_EXT
  , pattern VK_STRUCTURE_TYPE_PHYSICAL_DEVICE_GRAPHICS_PIPELINE_LIBRARY_PROPERTIES_EXT
  , pattern VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_LIBRARY_CREATE_INFO_EXT
  , pattern VK_PIPELINE_CREATE_RETAIN_LINK_TIME_OPTIMIZATION_INFO_BIT_EXT
  , pattern VK_PIPELINE_CREATE_LINK_TIME_OPTIMIZATION_BIT_EXT
  , pattern VK_PIPELINE_LAYOUT_CREATE_INDEPENDENT_SETS_BIT_EXT
  ) where

import Foreign.C.String
import GHC.Ptr
import Vulkan.Types.Enum.VkGraphicsPipelineLibraryFlagBitsEXT
import Vulkan.Types.Enum.VkGraphicsPipelineLibraryFlagsEXT
import Vulkan.Types.Enum.VkPipelineCreateFlagBits
import Vulkan.Types.Enum.VkPipelineLayoutCreateFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkGraphicsPipelineLibraryCreateInfoEXT
import Vulkan.Types.Struct.VkPhysicalDeviceGraphicsPipelineLibraryFeaturesEXT
import Vulkan.Types.Struct.VkPhysicalDeviceGraphicsPipelineLibraryPropertiesEXT
import Vulkan.Types.VkFun



pattern VK_EXT_GRAPHICS_PIPELINE_LIBRARY_SPEC_VERSION :: (Eq a, Num a) => a
pattern VK_EXT_GRAPHICS_PIPELINE_LIBRARY_SPEC_VERSION = 1

pattern VK_EXT_GRAPHICS_PIPELINE_LIBRARY_EXTENSION_NAME :: CString
pattern VK_EXT_GRAPHICS_PIPELINE_LIBRARY_EXTENSION_NAME <- (const False -> True)
  where
    VK_EXT_GRAPHICS_PIPELINE_LIBRARY_EXTENSION_NAME = Ptr ("VK_EXT_graphics_pipeline_library\0"##)

#else

module Vulkan.Ext.VK_EXT_graphics_pipeline_library where

#endif